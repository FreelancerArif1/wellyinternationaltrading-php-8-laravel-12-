@extends('backend.layouts.app')

@section('content')
    <section class="row">
        <div class="col-12 col-lg-12">
            <div class="row">
                <div class="col-sm-6 col-md-3">
                    <div class="card card-stats card-primary card-round">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="fa-solid fa-dollar-sign"></i>
                                    </div>
                                </div>
                                <div class="col-7 col-stats">
                                    <div class="numbers">
                                        <p class="card-category">@lang('Total Deposit')</p>
                                        <h4 class="card-title"> 0000 </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="card card-stats card-success card-round">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="fa-solid fa-money-bill-transfer"></i>
                                    </div>
                                </div>
                                <div class="col-7 col-stats">
                                    <div class="numbers">
                                        <p class="card-category">@lang('Completed Withdraw')</p>
                                        <h4 class="card-title">00000</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="card card-stats card-warning card-round">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="fas fa-chart-pie"></i>
                                    </div>
                                </div>
                                <div class="col-7 col-stats">
                                    <div class="numbers">
                                        <p class="card-category">@lang('Pending withdrawals')</p>
                                        <h4 class="card-title">00000</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="card card-stats card-danger card-round">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="far fa-times-circle"></i>
                                    </div>
                                </div>
                                <div class="col-7 col-stats">
                                    <div class="numbers">
                                        <p class="card-category">@lang('Rejected withdrawals')</p>
                                        <h4 class="card-title">0000</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6 col-md-3">
                    <div class="card card-stats card-round">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="fa-solid fa-users"></i>
                                    </div>
                                </div>
                                <div class="col-7 col-stats">
                                    <div class="numbers">
                                        <p class="card-category">@lang('Total users')</p>
                                        <h4 class="card-title">0000</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="card card-stats card-round">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="fa-solid fa-users-slash"></i>
                                    </div>
                                </div>
                                <div class="col-7 col-stats">
                                    <div class="numbers">
                                        <p class="card-category">@lang('Disabled Users')</p>
                                        <h4 class="card-title">00000</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="card card-stats card-round">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="fa-solid fa-envelopes-bulk"></i>
                                    </div>
                                </div>
                                <div class="col-7 col-stats">
                                    <div class="numbers">
                                        <p class="card-category">@lang('Email Unverified User')</p>
                                        <h4 class="card-title">0000</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="card card-stats card-round">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-5">
                                    <div class="icon-big text-center">
                                        <i class="fa-solid fa-user-secret"></i>
                                    </div>
                                </div>
                                <div class="col-7 col-stats">
                                    <div class="numbers">
                                        <p class="card-category">@lang('KYC unverified users')</p>
                                        <h4 class="card-title">00000</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="card card-round">
                        <div class="card-body">
                            <div class="card-head-row card-tools-still-right">
                                <div class="card-title">@lang('Latest Registered Users')</div>
                            </div>
                            <div class="card-list py-4">
                                {{-- @forelse ($users as $user)
                                    <div class="item-list">
                                        <div class="avatar">
                                            <img src="{{ get_file($user->image, 'users') }}" alt="..."
                                                class="avatar-img rounded-circle">
                                        </div>
                                        <div class="info-user ms-3">
                                            <div class="username">{{ $user->full_name }}</div>
                                            <div class="status">{{ $user->email }}</div>
                                        </div>
                                        <x-link :href="route('admin.users.view-profile', $user->username)" type="primary" icon="eye" :only_icon="true" />
                                    </div>
                                @empty
                                @endforelse --}}
                            </div>
                        </div>
                    </div>
                </div>



                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>@lang('Latest Transactions')</h5>
                        </div>

                        <div class="card-body p-0">
                            {{-- <x-table :headers="['User', 'Type', 'Final Amount', 'Balance']">
                                @forelse ($transactions as $trx)
                                    <tr>
                                        <td>
                                            <div class="avatar">
                                                <img src="{{ get_file($trx->user->image, 'users') }}" alt="..."
                                                    class="avatar-img rounded">
                                            </div>
                                            {{ $trx->user->full_name }}
                                        </td>
                                        <td>
                                            <span
                                                class="badge bg-{{ in_array($trx->type, ['withdraw', 'subtract balance']) ? 'danger' : 'success' }}">
                                                {{ ucfirst($trx->type) }}
                                            </span>
                                        </td>
                                        <td>
                                            <strong class="{{ $trx->amount < 0 ? 'text-danger' : 'text-success' }}">
                                                {{ $trx->amount < 0 ? '-' : '+' }}{{ amount(abs($trx->amount)) }}
                                            </strong>
                                        </td>
                                        <td>{{ amount($trx->post_balance) }}</td>

                                    </tr>
                                @empty
                                    <x-no-data />
                                @endforelse
                            </x-table> --}}
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection
