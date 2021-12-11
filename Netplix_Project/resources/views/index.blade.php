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
                <div class="carousel-item carousel-header active">
                    <img src="https://picsum.photos/200/300?random=1" class="d-block w-100 header-image" alt="...">
                    <div class="carousel-caption d-none d-md-block fw-bolder">
                        <div class="container px-3 carousel-content text-light d-flex flex-column align-items-start">
                            <p class="carousel-sub"><i class="fas fa-star text-warning"></i> 8.1 | Thriller | 2020</p>
                            <h1 class="carousel-title fw-bolder">Money Heist</h1>
                            <p class="carousel-text">Eight thieves take hostages and lock themselves in the Royal Mint of
                                Spain as a
                                criminal mastermind
                                manipulates the police to carry out his plan.</p>
                            <button class="btn btn-danger btn-add-watchlist"><i class="fas fa-plus"></i> Add To
                                Watchlists</button>
                        </div>
                    </div>
                </div>
                <div class="carousel-item carousel-header">
                    <img src="https://picsum.photos/200/300?random=2" class="d-block w-100 header-image" alt="...">
                    <div class="carousel-caption d-none d-md-block fw-bolder">
                        <div class="container px-3 carousel-content text-light d-flex flex-column align-items-start">
                            <p class="carousel-sub"><i class="fas fa-star text-warning"></i> 8.1 | Thriller | 2020</p>
                            <h1 class="carousel-title fw-bolder">Money Heist</h1>
                            <p class="carousel-text">Eight thieves take hostages and lock themselves in the Royal Mint of
                                Spain as a
                                criminal mastermind
                                manipulates the police to carry out his plan.</p>
                            <button class="btn btn-danger btn-add-watchlist"><i class="fas fa-plus"></i> Add To
                                Watchlists</button>
                        </div>
                    </div>
                </div>
                <div class="carousel-item carousel-header">
                    <img src="https://picsum.photos/200/300?random=3" class="d-block w-100 header-image" alt="...">
                    <div class="carousel-caption d-none d-md-block fw-bolder">
                        <div class="container px-3 carousel-content text-light d-flex flex-column align-items-start">
                            <p class="carousel-sub"><i class="fas fa-star text-warning"></i> 8.1 | Thriller | 2020</p>
                            <h1 class="carousel-title fw-bolder">Money Heist</h1>
                            <p class="carousel-text">Eight thieves take hostages and lock themselves in the Royal Mint of
                                Spain as a
                                criminal mastermind
                                manipulates the police to carry out his plan.</p>
                            <button class="btn btn-danger btn-add-watchlist"><i class="fas fa-plus"></i> Add To
                                Watchlists</button>
                        </div>
                    </div>
                </div>
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
                    <input type="text" class="search-movie p-2"
                        style="background: transparent; outline: none; border: none; background-color: #2D2D2D; width: 20vw; border-radius: 25px;"
                        placeholder="Search movie...">
                </div>
            </div>
            <hr class="dropdown-divider">
            <div class="movie-genre w-100 position-relative px-2 mt-5">
                <ul class="movie-genre-carousel d-flex list-unstyled text-light cs-hidden text-light" id="autoWidth2">
                    @foreach ($genres as $genre)
                        <li><a href="" class="btn genre" role="button">{{ $genre->name }}</a></li>
                    @endforeach
                </ul>
            </div>
            <div class="mt-5 row movie-sort">
                <div class="col d-flex align-items-center">
                    <span>Sort By:</span>
                    <a href="#" class="btn sort">Latest</a>
                    <a href="#" class="btn sort">Year</a>
                    <a href="#" class="btn sort">A-Z</a>
                    <a href="#" class="btn sort">Z-A</a>
                    <a href="#" class="btn sort">Rating</a>
                </div>
            </div>
            <div class="container-fluid movie-body" id="movie-section">
                <div class="row mt-5 mb-5 gy-3 movie-content d-flex justify-content-center">
                    @foreach ($movies as $movie)
                        <div class="col-xl-2 col-5 me-5">
                            <a href="{{ route('show-movie', $movie->show_id) }}"><img src="{{ $movie->image_url }}"
                                    class="movie-image" alt="..."></a>
                            <div class="movie-title fs-5">{{ $movie->title }}</div>
                            <div class="d-flex justify-content-between">
                                <p class="text-muted">{{ substr($movie->release_date, 0, 4) }}</p>
                                <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                        class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            {{ $movies->links() }}
        </div>
    </section>

@endsection
