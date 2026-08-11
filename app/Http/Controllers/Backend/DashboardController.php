<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Auth;
use GuzzleHttp\Psr7\Request;
use Helper;
use Session;
use App\Models\Verses;
use DB;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware(function ($request, $next) {

            $this->user = Auth::user();

            if (!$this->user || Helper::hasRight('dashboard.view') !=  true) {
                Auth::logout();
                $request->session()->invalidate();
                session()->flash('error', 'You can not access! Login first.');
                return redirect()->route('admin');
            }
            return $next($request);
        });
    }

    public function index(){
        if (empty(Session::get('admin_language'))) {
            Session::put('admin_language', 'en');
        }
        return view('backend.pages.dashboard');
    }

    public function information($testament){
        $testament = $testament;
        if($testament == 'all'){
            $data['total_verses'] = Verses::count();
            $data['translated_verses'] = Verses::where('text', 'not like', '%class="old-vers"%')->count();
            $data['untranslated_verses'] = Verses::where('text', 'like', '%class="old-vers"%')->count();
        }else{
            $data['total_verses'] = Verses::where('book_type', $testament)->count();
            $data['translated_verses'] = Verses::where('book_type', $testament)->where('text', 'not like', '%class="old-vers"%')->count();
            $data['untranslated_verses'] = Verses::where('book_type', $testament)->where('text', 'like', '%class="old-vers"%')->count();
        }

        return view('backend.pages.dashboardinfo', compact('data', 'testament'));
    }



}
