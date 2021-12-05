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
            <div
                class="container px-5 carousel-content position-absolute text-light h-100 d-flex flex-column justify-content-center">
                <p class="carousel-sub"><i class="fas fa-star text-warning"></i> 8.1 | Thriller | 2020</p>
                <h1 class="carousel-title fw-bolder">Money Heist</h1>
                <p class="carousel-text">Eight thieves take hostages and lock themselves in the Royal Mint of Spain as a
                    criminal mastermind
                    manipulates the police to carry out his plan.</p>
                <button class="btn btn-danger btn-add-watchlist"><i class="fas fa-plus"></i> Add To Watchlists</button>
            </div>
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                    class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item carousel-header active">
                    <img src="https://picsum.photos/200/300?random=1" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item carousel-header">
                    <img src="https://picsum.photos/200/300?random=2" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item carousel-header">
                    <img src="https://picsum.photos/200/300?random=3" class="d-block w-100" alt="...">
                </div>
            </div>
        </div>
    </section>
    <section class="main-body">
        <ul class="movie-carousel card-group cs-hidden text-light" id="autoWidth">
            <li class="card">
                <img src=" https://picsum.photos/200/300?random=5" class="card-img-top" alt="...">
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
                <img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="...">
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
                <img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="...">
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
                <img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="...">
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
                <img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="...">
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
                <img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="...">
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
        <div class="container-fluid p-3">
            <div class="row movie-title">
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
            <hr>
            <div class="row movie-genre">
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="genre-content w-100 d-flex justify-content-between">
                                <a href="#" class="genre">
                                    Action
                                </a>
                                <a href="#" class="genre">
                                    Thriller
                                </a>
                                <a href="#" class="genre">
                                    Adventure
                                </a>
                                <a href="#" class="genre">
                                    Drama
                                </a>
                                <a href="#" class="genre">
                                    Biography
                                </a>
                                <a href="#" class="genre">
                                    Comedy
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="genre-content w-100 d-flex justify-content-between">
                                <a href="#" class="genre">
                                    Action1
                                </a>
                                <a href="#" class="genre">
                                    Thriller1
                                </a>
                                <a href="#" class="genre">
                                    Adventure1
                                </a>
                                <a href="#" class="genre">
                                    Drama1
                                </a>
                                <a href="#" class="genre">
                                    Biography1
                                </a>
                                <a href="#" class="genre">
                                    Comedy1
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="genre-content w-100 d-flex justify-content-between">
                                <a href="#" class="genre">
                                    Action2
                                </a>
                                <a href="#" class="genre">
                                    Thriller2
                                </a>
                                <a href="#" class="genre">
                                    Adventure2
                                </a>
                                <a href="#" class="genre">
                                    Drama2
                                </a>
                                <a href="#" class="genre">
                                    Biography2
                                </a>
                                <a href="#" class="genre">
                                    Comedy2
                                </a>
                            </div>
                        </div>
                    </div>
                    <button style="width: 2.5%;" class="carousel-control-prev" type="button"
                        data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button style="width: 2.5%;" class="carousel-control-next" type="button"
                        data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <div class="mt-5 row movie-sort">
                <div class="col d-flex align-items-center">
                    <span>Sort By:</span>
                    <a href="#" class="sort">Latest</a>
                    <a href="#" class="sort">Year</a>
                    <a href="#" class="sort">A-Z</a>
                    <a href="#" class="sort">Z-A</a>
                    <a href="#" class="sort">Rating</a>
                </div>
            </div>
            <div class="container-fluid movie-body">
                <div class="row mt-5 movie-content d-flex justify-content-center">
                    <div class="col-xl-2 col-5 me-5">
                        <img src=" https://picsum.photos/200/300?random=10" class="movie-image" alt="...">
                        <div class="movie-title fs-5">Squid Game</div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-5 me-5">
                        <img src=" https://picsum.photos/200/300?random=10" class="movie-image" alt="...">
                        <div class="movie-title fs-5">Squid Game</div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-5 me-5">
                        <img src=" https://picsum.photos/200/300?random=10" class="movie-image" alt="...">
                        <div class="movie-title fs-5">Squid Game</div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-5 me-5">
                        <img src=" https://picsum.photos/200/300?random=10" class="movie-image" alt="...">
                        <div class="movie-title fs-5">Squid Game</div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-5">
                        <img src=" https://picsum.photos/200/300?random=10" class="movie-image" alt="...">
                        <div class="movie-title fs-5">Squid Game</div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-5 me-5">
                        <img src=" https://picsum.photos/200/300?random=10" class="movie-image" alt="...">
                        <div class="movie-title fs-5">Squid Game</div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-5 me-5">
                        <img src=" https://picsum.photos/200/300?random=10" class="movie-image" alt="...">
                        <div class="movie-title fs-5">Squid Game</div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-5 me-5">
                        <img src=" https://picsum.photos/200/300?random=10" class="movie-image" alt="...">
                        <div class="movie-title fs-5">Squid Game</div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-5 me-5">
                        <img src=" https://picsum.photos/200/300?random=10" class="movie-image" alt="...">
                        <div class="movie-title fs-5">Squid Game</div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-5">
                        <img src=" https://picsum.photos/200/300?random=10" class="movie-image" alt="...">
                        <div class="movie-title fs-5">Squid Game</div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

@endsection
