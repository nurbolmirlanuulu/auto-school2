<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>Landing Page | AUTO SCHOOL | WARIODDLY </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="AUTO SCHOOL web-application | " name="description" />
        <meta content="Coderthemes" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/app-modern.min.css" rel="stylesheet" type="text/css" id="light-style" />
        <link href="assets/css/app-modern-dark.min.css" rel="stylesheet" type="text/css" id="dark-style" />  

    </head>

    <body class="loading" data-layout-config='{"darkMode":false}'>

        <!-- NAVBAR START -->
        <nav class="navbar navbar-expand-lg py-lg-3 navbar-dark">
            <div class="container">

                <!-- logo -->
                <a href="index.html" class="navbar-brand me-lg-5">
                    <img src="assets/images/logo.png" alt="" class="logo-dark" height="18" />
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                    aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="mdi mdi-menu"></i>
                </button>

                <!-- menus -->
                <div class="collapse navbar-collapse" id="navbarNavDropdown">

                    <!-- left menu -->
                    <ul class="navbar-nav me-auto align-items-center">
                        <li class="nav-item mx-lg-1">
                            <a class="nav-link active" href="">Home</a>
                        </li>
                        <li class="nav-item mx-lg-1">
                            <a class="nav-link" href="">FAQs</a>
                        </li>
                        <li class="nav-item mx-lg-1">
                            <a class="nav-link" href="">Clients</a>
                        </li>
                        <li class="nav-item mx-lg-1">
                            <a class="nav-link" href="#contacts">Contact</a>
                        </li>
                    </ul>

                    <!-- right menu -->
                    <ul class="navbar-nav ms-auto align-items-center">
                        <li class="nav-item me-0">
                            <a href="{{ route('login') }}" class="nav-link d-lg-none">Sign in</a>
                            <a href="{{ route('login') }}" class="btn btn-sm btn-light rounded-pill d-none d-lg-inline-flex">
                                <i class="mdi mdi-basket me-2"></i> Войти
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
        <!-- NAVBAR END -->

        <!-- START HERO -->
        <section class="hero-section">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-5">
                        <div class="mt-md-4">
                            <div>
                                <span class="badge bg-danger rounded-pill"></span>
                                <span class="text-white-50 ms-1"></span>
                            </div>
                            <h2 class="text-white fw-normal mb-4 mt-3 hero-title">
                            Добро пожаловать в нашу автошколу!
                            </h2>

                            <p class="mb-4 font-16 text-white-50">Наша автошкола предлагает высококачественное обучение вождению, призванное подготовить вас к получению водительского удостоверения и развить навыки безопасного и уверенного вождения. Мы стремимся предоставить нашим ученикам все необходимые знания и практические навыки, чтобы они могли стать ответственными и опытными водителями на дороге.</p>

                            <a href="{{ route('dashboard') }}" class="btn btn-success">Войти <i
                                    class="mdi mdi-arrow-right ms-1"></i></a>
                        </div>
                    </div>
                    <div class="col-md-5 offset-md-2">
                        <div class="text-md-end mt-3 mt-md-0">
                            <img src="assets/images/startup.svg" alt="" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END HERO -->

        <!-- START SERVICES -->
        
           
        <!-- END FEATURES 2 -->

        <!-- START PRICING -->
        <section class="py-5 bg-light-lighten border-top border-bottom border-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <h1 class="mt-0"><i class="mdi mdi-tag-multiple"></i></h1>
                            <h3>Выбирайте простые<span class="text-primary">цены</span></h3>
                            <p class="text-muted mt-2">
                                <br>.</p>
                        </div>
                    </div>
                </div>

                <div class="row mt-5 pt-3">
                    <div class="col-md-4">
                        <div class="card card-pricing">
                            <div class="card-body text-center">
                                <p class="card-pricing-plan-name fw-bold text-uppercase">Категория B </p>
                                <i class="card-pricing-icon dripicons-user text-primary"></i>
                                <h2 class="card-pricing-price">8000<span>/ сом</span></h2>
                                <ul class="card-pricing-features">
                                    <li>обучение 2,5 месяца</li>
                                    <li>С 16-лет</li>
                                    <li>15 часов практики</li>
                                    <li>3 раза в неделю</li>
                                    <li>0% расрочки без переплат </li>
                                </ul>
                                <a href="#contacts" class="btn btn-primary mt-4 mb-2 rounded-pill">Выбрать</a>
                            </div>
                        </div>
                        <!-- end Pricing_card -->
                    </div>
                    <!-- end col -->

                    <div class="col-md-4">
                        <div class="card card-pricing card-pricing-recommended">
                            <div class="card-body text-center">
                                <div class="card-pricing-plan-tag">Рекомендуется</div>
                                <p class="card-pricing-plan-name fw-bold text-uppercase">Категория B+C</p>
                                <i class="card-pricing-icon dripicons-briefcase text-primary"></i>
                                <h2 class="card-pricing-price">10 000 <span>/ сом</span></h2>
                                <ul class="card-pricing-features">
                                    <li>Обучение 3,5 месяца</li>
                                    <li>С 18-лет</li>
                                    <li>20 часов практики</li>
                                    <li>3 раза в неделю</li>
                                    <li>0% расрочки без переплат </li>
                                    
                                </ul>
                                <a href="#contacts" class="btn btn-primary mt-4 mb-2 rounded-pill">Выбрать</a>
                            </div>
                        </div>
                        <!-- end Pricing_card -->
                    </div>
                    <!-- end col -->

                    <div class="col-md-4">
                        <div class="card card-pricing">
                            <div class="card-body text-center">
                                <p class="card-pricing-plan-name fw-bold text-uppercase">Категория D</p>
                                <i class="card-pricing-icon dripicons-store text-primary"></i>
                                <h2 class="card-pricing-price">8000 <span>/ сом</span></h2>
                                <ul class="card-pricing-features">
                                    <li>Обучение 1,5 месяца</li>
                                    <li>С 18-лет</li>
                                    <li>15 часов практики</li>
                                    <li>3 раза в неделю</li>
                                    <li>0% расрочки без переплат </li>
                                </ul>
                                <a href="#contacts" class="btn btn-primary mt-4 mb-2 rounded-pill">Выбрать</a>
                            </div>
                        </div>
                        <!-- end Pricing_card -->
                    </div>
                    <!-- end col -->

                </div>

            </div>
        </section>
        <!-- END PRICING -->

        <!-- START FAQ -->
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <h1 class="mt-0"><i class="mdi mdi-frequently-asked-questions"></i></h1>
                            <h3>Часто задаваемые <span class="text-primary">вопросы</span></h3>
                            <p class="text-muted mt-2">Вот некоторые из основных типов вопросов, которые задают наши клиенты.
                                Для получения дополнительной
информации, пожалуйста, свяжитесь с нами.</p>

                            <button type="button" class="btn btn-success btn-sm mt-2"><i class="mdi mdi-email-outline me-1"></i> Email us your question</button>
                            <button type="button" class="btn btn-info btn-sm mt-2 ms-1"><i class="mdi mdi-twitter me-1"></i> Send us a tweet</button>
                        </div>
                    </div>
                </div>

                <div class="row mt-5">
                    <div class="col-lg-5 offset-lg-1">
                        <!-- Question/Answer -->
                        <div>
                            <div class="faq-question-q-box">Q.</div>
                            <h4 class="faq-question text-body">Какие документы необходимо предоставить для получения водительского удостоверения?</h4>
                            <p class="faq-answer mb-4 pb-1 text-muted">Для получения водительского удостоверения необходимо предоставить паспорт или
                            иной документ, удостоверяющий личность, медицинскую справку о состоянии .
                            здоровья, а также фотографии соответствующего формата. <a href="https://themes.getbootstrap.com/licenses/" target="_blank"></a>.</p>
                        </div>

                        <!-- Question/Answer -->
                        <div>
                            <div class="faq-question-q-box">Q.</div>
                            <h4 class="faq-question text-body">Какова продолжительность обучения в автошколе, включая теоретическое и практическое обучение?</h4>
                            <p class="faq-answer mb-4 pb-1 text-muted">Продолжительность обучения в автошколе может варьироваться в зависимости от выбранной категории и индивидуальных особенностей студента. Обычно полный курс обучения состоит из теоретической части, которая занимает около 40 часов, и практической части, включающей обучение на специальной площадке и дороге.</p>
                        </div>

                    </div>
                    <!--/col-lg-5 -->

                    <div class="col-lg-5">
                        <!-- Question/Answer -->
                        <div>
                            <div class="faq-question-q-box">Q.</div>
                            <h4 class="faq-question text-body">Какие требования к возрасту существуют для получения водительского удостоверения на различные категории транспортных средств?</h4>
                            <p class="faq-answer mb-4 pb-1 text-muted">Возрастные требования для получения водительского удостоверения на различные категории транспортных средств могут различаться. Например, для категории "B" (легковые автомобили) в большинстве стран минимальный возраст составляет 16 лет, но есть некоторые ограничения и исключения для молодых водителей.</p>
                        </div>

                        <!-- Question/Answer -->
                        <div>
                            <div class="faq-question-q-box">Q.</div>
                            <h4 class="faq-question text-body">Какие шаги нужно предпринять для записи на курсы в автошколу?</h4>
                            <p class="faq-answer mb-4 pb-1 text-muted">Чтобы записаться на курсы в нашу автошколу, вы можете позвонить нам по указанному телефону или посетить наш офис лично. Мы проведем с вами необходимую консультацию и заполним все необходимые документы для дальнейшего обучения.</p>
                        </div>

                    </div>
                    <!--/col-lg-5-->
                </div>
                <!-- end row -->

            </div> <!-- end container-->
        </section>
        <!-- END FAQ -->

        
        <!-- START CONTACT -->
        <section class="py-5 bg-light-lighten border-top border-bottom border-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <h3>Отправить <span class="text-primary">заявку</span></h3>
                            <p class="text-muted mt-2">Пожалуйста, заполните следующую форму, и мы свяжемся с вами в ближайшее время.
                                <br>Для получения дополнительной
информации, пожалуйста, свяжитесь с нами.</p>
                        </div>
                    </div>
                </div>


                @if(session('success'))
                    <div class="row">
                        <div class="col-12">
                            <div class="alert alert-success alert-dismissible bg-success text-white border-0 fade show" role="alert">
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                <strong>Success - </strong> {{ session('success') }}
                            </div>
                        </div>
                    </div>
                @endif

                @if ($errors->any())

                    @foreach ($errors->all() as $error)
                        <div class="row">
                            <div class="col-12">
                                <div class="alert alert-danger alert-dismissible bg-danger text-white border-0 fade show" role="alert">
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    <strong>Error - </strong> {{ $error }}
                                </div>
                            </div>

                        </div>
                    @endforeach

                @endif




                <div class="row align-items-center mt-3" id="contacts">
                    <div class="col-md-4">
                        <p class="text-muted"><span class="fw-bold">Служба поддержки клиентов:</span><br> <span class="d-block mt-1">+996702460543</span></p>
                        <p class="text-muted mt-4"><span class="fw-bold">Адрес электронной почты:</span><br> <span class="d-block mt-1">politechauto@gmail.com</span></p>
                        <p class="text-muted mt-4"><span class="fw-bold">Адрес офиса:</span><br> <span class="d-block mt-1">ул.Сухамалиева 11/а</span></p>
                        <p class="text-muted mt-4"><span class="fw-bold">Рабочее время:</span><br> <span class="d-block mt-1">с 9:00-20:00</span></p>
                    </div>

                    <div class="col-md-8">
                        <form action="{{ route('applications.store') }}" method="POST">

                            @csrf

                            <div class="row mt-4">
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <label for="name" class="form-label">Имя</label>
                                        <input class="form-control form-control-light" type="text" id="name" required name="name" placeholder="Name...">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <label for="surname" class="form-label">Фамилия</label>
                                        <input class="form-control form-control-light" type="text" required="" id="surname" name="surname" placeholder="Enter you surname...">
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-1">
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <label for="patronymic" class="form-label">Отчество</label>
                                        <input class="form-control form-control-light" type="text" id="patronymic" name="patronymic" placeholder="Patronymic...">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <label for="emailaddress" class="form-label">Адрес почты</label>
                                        <input class="form-control form-control-light" type="email" required="" id="emailaddress" name="email"  placeholder="Enter you email...">
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-1">
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <label for="phone" class="form-label">Телефон</label>
                                        <input class="form-control form-control-light" type="text" id="phone" name="phone" required placeholder="Phone...">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <label for="subject" class="form-label">Желаемое категория</label>
                                        <input class="form-control form-control-light" type="text" id="subject" name="title"  placeholder="Enter subject...">
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-1">
                                <div class="col-lg-12">
                                    <div class="mb-2">
                                        <label for="comments" class="form-label">Сообщения / Интересующие вас вопросы</label>
                                        <textarea id="comments" rows="4" class="form-control form-control-light"  name="description"  placeholder="Type your message here..."></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-2">
                                <div class="col-12 text-end">
                                    <button class="btn btn-primary">Отправить заявку <i
                                        class="mdi mdi-telegram ms-1"></i> </button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- END CONTACT -->

        <!-- START FOOTER -->
        <footer class="bg-dark py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        
                        <p class="text-muted mt-4">Ссылки на социальные сети </p>

                        <ul class="social-list list-inline mt-3">
                            <li class="list-inline-item text-center">
                                <a href="javascript: void(0);" class="social-list-item border-primary text-primary"><i class="mdi mdi-facebook"></i></a>
                            </li>
                            <li class="list-inline-item text-center">
                                <a href="javascript: void(0);" class="social-list-item border-danger text-danger"><i class="mdi mdi-google"></i></a>
                            </li>
                            <li class="list-inline-item text-center">
                                <a href="javascript: void(0);" class="social-list-item border-info text-info"><i class="mdi mdi-twitter"></i></a>
                            </li>
                            <li class="list-inline-item text-center">
                                <a href="javascript: void(0);" class="social-list-item border-secondary text-secondary"><i class="mdi mdi-github"></i></a>
                            </li>
                        </ul>

                    </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="mt-5">
                            <p class="text-muted mt-4 text-center mb-0">© 2023</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- END FOOTER -->

        <!-- bundle -->
        <script src="assets/js/vendor.min.js"></script>
        <script src="assets/js/app.min.js"></script>

    </body>

</html>