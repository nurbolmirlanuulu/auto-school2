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

    <div class="row d-flex ">
        <div class="col-xl-3 col-lg-4">
            <div class="card tilebox-one">
                <div class="card-body">
                    <i class='uil uil-users-alt float-end'></i>
                    <h6 class="text-uppercase mt-0">Active Users</h6>
                    <h2 class="my-2" id="">{{App\Models\User::count()}}</h2>
                </div>
            </div>

            <div class="card tilebox-one">
                <div class="card-body">
                    <i class='uil uil-window-restore float-end'></i>
                    <h6 class="text-uppercase mt-0">Active course</h6>
                    <h2 class="my-2" id="">{{\App\Models\CourseMaterials::count()}}</h2>
                </div> <!-- end card-body-->
            </div>

            <div class="card tilebox-one">
                <div class="card-body">
                    <i class='uil uil-window-restore float-end'></i>
                    <h6 class="text-uppercase mt-0">All applications</h6>
                    <h2 class="my-2" id="">{{\App\Models\Applications::count()}}</h2>
                </div> <!-- end card-body-->
            </div>
        </div> <!-- end col -->

            <div class="col-lg-8">
                <h6 class="text-uppercase mt-0">Most popular courses</h6>
                <canvas id="myChart"></canvas>

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
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        <?php
            $courses = \App\Models\CourseMaterials::orderby('views')->get();
            $coursesName = $courses->pluck('title')->toArray();
        $coursesViews= $courses->pluck('views')->toArray();

        ?>

        let labels = [<?php
                      $quotedArray = array_map(function ($item) {
                          return "'$item'";
                      }, $coursesName);

                      echo implode(',', $quotedArray); ?>];

        let colors = [];
        for(let i = 0; i<labels.length; i++){
               colors.push(getRandomColor());
        }

        // Данные для диаграммы
        var data = {
            labels: labels,
            datasets: [{
                data: [<?php echo implode(',', $coursesViews) ?>],
                backgroundColor: colors,
            }]
        };

        // Опции для диаграммы
        var options = {
            responsive: true,
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: 'Pie Chart Example'
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        };

        // Создание круговой диаграммы
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'pie',
            data: data,
            options: options
        });

        function getRandomNumber(min, max) {
            return Math.floor(Math.random() * (max - min + 1)) + min;
        }

        // Функция для генерации случайного цвета в формате RGB
        function getRandomColor() {
            var red = getRandomNumber(0, 255);
            var green = getRandomNumber(0, 255);
            var blue = getRandomNumber(0, 255);
            return 'rgb(' + red + ', ' + green + ', ' + blue + ')';
        }
    </script>
@endpush
