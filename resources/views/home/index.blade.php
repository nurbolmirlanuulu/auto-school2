@extends('layouts.app')

@section('title', 'Home')

@section('content')

    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <form class="d-flex">
                        <div class="input-group">
                            <input type="text" class="form-control form-control-light" id="dash-daterange">
                            <span class="input-group-text bg-primary border-primary text-white">
                                                    <i class="mdi mdi-calendar-range font-13"></i>
                                                </span>
                        </div>
                        <a href="javascript: void(0);" class="btn btn-primary ms-2">
                            <i class="mdi mdi-autorenew"></i>
                        </a>
                    </form>
                </div>
                <h4 class="page-title">Home</h4>
            </div>
        </div>
    </div>

    

    
@endsection

@push('header_scripts')
    <link href="{{ asset("assets/css/vendor/jquery-jvectormap-1.2.2.css") }}" rel="stylesheet" type="text/css" />
@endpush

@push('footer_scripts')

    <script src="{{ asset("assets/js/vendor/apexcharts.min.js") }}"></script>
    <script src="{{ asset("assets/js/vendor/jquery-jvectormap-1.2.2.min.js") }}"></script>
    <script src="{{ asset("assets/js/vendor/jquery-jvectormap-world-mill-en.js") }}"></script>

    <script src="{{ asset("assets/js/pages/dashboard-analytics.js") }}"></script>

@endpush
