@extends('layouts.app',['title' => 'Home'])
@section('library')
    <link rel="stylesheet" href="{{ asset('css/index.css') }}">
    <script src="{{ asset('js/index.js') }}" defer></script>
    <link type="text/css" rel="stylesheet" href="{{ asset('css/lightslider.css') }}" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="{{ asset('js/lightslider.js') }}"></script>
@endsection
@section('content')
    <section class="main-header">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                @foreach ($randomMovies as $randMovie)
                    <div class="carousel-item carousel-header{{ $randomMovies->first() == $randMovie ? ' active' : '' }}">
                        <img src="{{ $randMovie->bg_url }}" class="d-block w-100 header-image" alt="...">
                        <div class="carousel-caption d-none d-md-block fw-bolder">
                            <div class="container px-3 carousel-content text-light d-flex flex-column align-items-start">
                                <p class="carousel-sub"><i class="fas fa-star text-warning"></i> {{ $randMovie->rating }}
                                    |
                                    {{ $randMovie->category->name }} | {{ $randMovie->release_date->format('Y') }}</p>
                                <h1 class="carousel-title fw-bolder">{{ $randMovie->title }}</h1>
                                <p class="carousel-text">{{ Str::limit($randMovie->description, 200) }}</p>
                                <button class="btn btn-danger btn-add-watchlist"><i class="fas fa-plus"></i> Add To
                                    Watchlists</button>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
    <section class="main-body">
        <div class="container-fluid py-3">
            <div class="ps-3 text-light">
                <i class="fas fa-fire fs-3"></i>
                <span class="fs-3 ms-3 fw-bold">Trending</span>
            </div>
            <hr class="dropdown-divider mb-3 text-light">
        </div>
        <ul class="movie-carousel card-group list-unstyled cs-hidden text-light" id="autoWidth">
            <li class="card">
                <a href=""><img src=" https://picsum.photos/200/300?random=5" class="card-img-top" alt="..."></a>
                <div class="card-body">
                    <h5 class="card-title">Squid Game</h5>
                    <div class="d-flex justify-content-between">
                        <p class="text-muted">2021</p>
                        <p class="card-info"><i class="fas fa-plus text-muted"></i> <span class="text-warning"><i
                                    class="fas fa-star text-warning"></i> 8.5</span></p>
                    </div>
                </div>
            </li>
            <li class="card">
                <a href=""><img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="..."></a>
                <div class="card-body">
                    <h5 class="card-title">Money heist</h5>
                    <div class="d-flex justify-content-between">
                        <p class="text-muted">2021</p>
                        <p class="card-info"><i class="fas fa-check text-danger"></i> <span class="text-warning"><i
                                    class="fas fa-star text-warning"></i> 8.5</span></p>
                    </div>
                </div>

            </li>
            <li class="card">
                <a href=""><img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="..."></a>
                <div class="card-body">
                    <h5 class="card-title">Money heist</h5>
                    <div class="d-flex justify-content-between">
                        <p class="text-muted">2021</p>
                        <p class="card-info"><i class="fas fa-check text-danger"></i> <span class="text-warning"><i
                                    class="fas fa-star text-warning"></i> 8.5</span></p>
                    </div>
                </div>

            </li>
            <li class="card">
                <a href=""><img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="..."></a>
                <div class="card-body">
                    <h5 class="card-title">Money heist</h5>
                    <div class="d-flex justify-content-between">
                        <p class="text-muted">2021</p>
                        <p class="card-info"><i class="fas fa-check text-danger"></i> <span class="text-warning"><i
                                    class="fas fa-star text-warning"></i> 8.5</span></p>
                    </div>
                </div>

            </li>
            <li class="card">
                <a href=""><img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="..."></a>
                <div class="card-body">
                    <h5 class="card-title">Money heist</h5>
                    <div class="d-flex justify-content-between">
                        <p class="text-muted">2021</p>
                        <p class="card-info"><i class="fas fa-check text-danger"></i> <span class="text-warning"><i
                                    class="fas fa-star text-warning"></i> 8.5</span></p>
                    </div>
                </div>

            </li>
            <li class="card">
                <a href=""><img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="..."></a>
                <div class="card-body">
                    <h5 class="card-title">Money heist</h5>
                    <div class="d-flex justify-content-between">
                        <p class="text-muted">2021</p>
                        <p class="card-info"><i class="fas fa-check text-danger"></i> <span class="text-warning"><i
                                    class="fas fa-star text-warning"></i> 8.5</span></p>
                    </div>
                </div>
            </li>
        </ul>
        <div class="container-fluid p-3 text-light">
            <div class="row movie-title mb-3">
                <div class="col d-flex flex-row justify-content-between">
                    <div class="ps-3">
                        <i class="fas fa-film fs-3"></i>
                        <span class="fs-3 ms-3 fw-bold">Movies</span>
                    </div>
                    <form action="">
                        <input type="text" class="search-movie p-3"
                            style="background: transparent; outline: none;color : #fff;border: none; background-color: #2D2D2D; width: 20vw; border-radius: 18px;"
                            placeholder="Search movie...">
                    </form>
                </div>
            </div>
            <hr class="dropdown-divider">
            <div class="movie-genre w-100 position-relative px-2 mt-5">
                <ul class="movie-genre-carousel d-flex list-unstyled text-light cs-hidden text-light" id="autoWidth2">
                    @foreach ($genres as $genre)
                        <li><button class="btn genre btn-genre w-100" role="button">{{ $genre->name }}</button></li>
                    @endforeach
                </ul>
            </div>
            <div class="mt-5 row movie-sort">
                <div class="col d-flex align-items-center">
                    <span>Sort By:</span>
                    <button class="btn sort btn-sort">Latest</button>
                    <button class="btn sort btn-sort">A-Z</button>
                    <button class="btn sort btn-sort">Z-A</button>
                    <button class="btn sort btn-sort">Rating</button>
                </div>
            </div>
            <div class="container-fluid movie-body" id="movie-section">
                <div class="row mt-5 mb-5 gy-3 movie-content d-flex justify-content-center" id='movie-section-container'>
                    @include('movie.data')
                </div>
            </div>
            <div class="ajax-load auto-load text-center" style="display: none">
                <svg version="1.1" id="L9" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                    x="0px" y="0px" height="60" viewBox="0 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve">
                    <path fill="#000"
                        d="M73,50c0-12.7-10.3-23-23-23S27,37.3,27,50 M30.9,50c0-10.5,8.5-19.1,19.1-19.1S69.1,39.5,69.1,50">
                        <animateTransform attributeName="transform" attributeType="XML" type="rotate" dur="1s"
                            from="0 50 50" to="360 50 50" repeatCount="indefinite" />
                    </path>
                </svg>
            </div>
            <script type="text/javascript">
                const genreButtons = document.querySelectorAll('.btn-genre');
                let activeButton = false;
                let activeButtonIndex = -1;

                const sortButtons = document.querySelectorAll('.btn-sort');
                let activeButtonSort = false;
                let activeButtonSortIndex = -1;

                var page = 1;
                $(window).scroll(function() {
                    if ($(window).scrollTop() + $(window).height() + 1 >= $(document).height() &&
                        {{ $pages }} > page && activeButton == false && activeButtonSort == false) {
                        page++;
                        loadMoreData(page);
                    }
                });

                function loadMoreData(page) {
                    $.ajax({
                            url: '?page=' + page,
                            type: "get",
                            beforeSend: function() {
                                $('.ajax-load').show();
                            }
                        })
                        .done(function(data) {
                            if (data.html == " ") {
                                $('.ajax-load').html("No more records found");
                                return;
                            }
                            $('.ajax-load').hide();
                            $("#movie-section-container").append(data.html);
                        })
                        .fail(function(jqXHR, ajaxOptions, thrownError) {
                            alert('server not responding...');
                        });
                }

                function loadGenre(genreParam) {
                    $.ajax({
                            url: '?genre=' + genreParam,
                            type: "get",
                        })
                        .done(function(data) {
                            $("#movie-section-container").empty();
                            $("#movie-section-container").append(data.html);
                        })
                        .fail(function(jqXHR, ajaxOptions, thrownError) {
                            console.log(jqXHR.responseJSON);
                            alert('server not responding...');
                        });
                }

                genreButtons.forEach((button, index) => {
                    button.addEventListener('click', (e) => {
                        e.preventDefault();
                        if (button.classList.contains('active-genre')) {
                            button.classList.remove('active-genre');
                            if (activeButton) { // teken matiin reset semua
                                $("#movie-section-container").empty();
                                page = 1;
                                loadMoreData(page);
                            }
                            activeButton = false;
                        } else {
                            if (activeButton) { // teken dan tombol lain juga nyala
                                genreButtons[activeButtonIndex].classList.remove('active-genre');
                            }
                            button.classList.add('active-genre');
                            loadGenre(button.textContent);
                            activeButton = true;
                            activeButtonIndex = index;
                        }
                    })
                });

                function loadGenre(genreParam) {
                    if (!activeButtonSort) {
                        $.ajax({
                                url: '?genre=' + genreParam,
                                type: "get",
                            })
                            .done(function(data) {
                                $("#movie-section-container").empty();
                                $("#movie-section-container").append(data.html);
                            })
                            .fail(function(jqXHR, ajaxOptions, thrownError) {
                                console.log(jqXHR.responseJSON);
                                alert('server not responding...');
                            });
                    } else {
                        $.ajax({
                                url: '?genre=' + genreParam + '&sort=' +
                                    sortButtons[activeButtonSortIndex].textContent,
                                type: "get",
                            })
                            .done(function(data) {
                                $("#movie-section-container").empty();
                                $("#movie-section-container").append(data.html);
                            })
                            .fail(function(jqXHR, ajaxOptions, thrownError) {
                                console.log(jqXHR.responseJSON);
                                alert('server not responding...');
                            });
                    }
                }

                function loadSort(sortParam) {
                    if (!activeButton) {
                        $.ajax({
                                url: '?sort=' + sortParam,
                                type: "get",
                                beforeSend: function() {
                                    console.log('sort doang');
                                }
                            })
                            .done(function(data) {
                                $("#movie-section-container").empty();
                                $("#movie-section-container").append(data.html);
                            })
                            .fail(function(jqXHR, ajaxOptions, thrownError) {
                                console.log(jqXHR.responseJSON);
                                alert('server not responding...');
                            });
                    } else {
                        ;
                        $.ajax({
                                url: '?sort=' + sortParam + '&genre=' + genreButtons[activeButtonIndex].textContent,
                                type: "get",
                            })
                            .done(function(data) {
                                $("#movie-section-container").empty();
                                $("#movie-section-container").append(data.html);
                            })
                            .fail(function(jqXHR, ajaxOptions, thrownError) {
                                console.log(jqXHR.responseJSON);
                                alert('server not responding...');
                            });
                    }
                }

                sortButtons.forEach((sortButton, index) => {
                    sortButton.addEventListener('click', (e) => {
                        e.preventDefault();
                        if (sortButton.classList.contains('active-sort')) {
                            sortButton.classList.remove('active-sort');
                            if (activeButtonSort) { // teken matiin reset semua
                                $("#movie-section-container").empty();
                                page = 1;
                                loadMoreData(page);
                            }
                            activeButtonSort = false;
                        } else {
                            if (activeButtonSort) { // teken dan tombol lain juga nyala
                                sortButtons[activeButtonSortIndex].classList.remove('active-sort');
                            }
                            sortButton.classList.add('active-sort');
                            loadSort(sortButton.textContent);
                            activeButtonSort = true;
                            activeButtonSortIndex = index;
                        }
                    })
                });
            </script>
        </div>
    </section>

@endsection
