<?php
namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class ProcessUpdate implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $verses;
    public $request;

    public function __construct($verses, array $request)
    {
        $this->verses = $verses;
        $this->request = (object) $request; // Cast to object for -> access
    }

    public function handle()
    {
        
        foreach ($this->verses as $main) {
            $html = $main->text;

            libxml_use_internal_errors(true);
            $dom = new \DOMDocument();
            $dom->loadHTML(mb_convert_encoding($html, 'HTML-ENTITIES', 'UTF-8'));

            $tags = $dom->getElementsByTagName('e');
            $eTags = iterator_to_array($tags);

            foreach ($eTags as $tag) {
                $tag->setAttribute('style',
                    'font-family:' . $this->request->font_family . ';' .
                    'color:' . $this->request->font_color . ';' .
                    'font-style:' . $this->request->font_style . ';'.
                    'text-decoration:' . $this->request->font_style . ';'
                );

                $tag->removeAttribute('class');

                $children = [];
                foreach ($tag->childNodes as $child) {
                    $children[] = $child;
                }

                foreach ($children as $child) {
                    // Remove old <bible> tag
                    if ($child->nodeType === XML_ELEMENT_NODE && $child->nodeName === 'bible') {
                        $tag->removeChild($child);
                    }
                    
                    // Add new <bible> tag
                    if ($child->nodeType === XML_TEXT_NODE && trim($child->nodeValue) !== '') {
                        $before = $dom->createElement('bible', $this->request->before_bracket);
                        $after = $dom->createElement('bible', $this->request->after_bracket);
                        $textNode = $child->cloneNode();

                        $tag->replaceChild($after, $child);
                        $tag->insertBefore($textNode, $after);
                        $tag->insertBefore($before, $textNode);
                    }
                }
            }

            $body = $dom->getElementsByTagName('body')->item(0);
            $newHtml = '';
            foreach ($body->childNodes as $child) {
                $newHtml .= $dom->saveHTML($child);
            }

            DB::table('verse')->where('id', $main->id)->update([
                'text' => $newHtml
            ]);
        }
    }
}
