@extends('layouts.app',['title' => 'Movie Show'])
@section('library')
    <link rel="stylesheet" href="{{ asset('css/movie.css') }}">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="{{ asset('js/lightslider.js') }}"></script>
    <link type="text/css" rel="stylesheet" href="{{ asset('css/lightslider.css') }}" />
    <script src="{{ asset('js/movie.js') }}" defer></script>
@endsection
@section('content')
    <section class='main-class container-fluid'>
        <div class="bg-image">
            <div class="row show-detail" id='show-detail'>
                <div class='col'>
                    <img src="https://image.tmdb.org/t/p/w500/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg" alt="test"
                        class='show-image'>
                </div>
                <div class='col-lg-8 text-light container'>
                    <div class='show-title d-flex roboto'>
                        <h1>Squid Game</h1>
                        <div>
                            <a href='#' class='btn btn-danger'>+ Add to Watchlist</a>
                            <a href="#" class='btn btn-outline-light'><i class="fas fa-share-alt"></i></a>
                        </div>
                    </div>
                    <div class='d-flex poppins'>
                        <a href='#' class="genre">Action</a>
                        <a href='#' class="genre">Drama</a>
                        <a href='#' class="genre">Mystery</a>
                    </div>
                    <div class='d-flex show-info poppins'>
                        <div>
                            <div><i class="fas fa-star text-warning"></i></div>
                            <div class='show-info-tag'>Rating</div>
                            <div class='show-info-score'>8.5</div>
                        </div>
                        <div>
                            <div><i class="far fa-calendar-alt text-primary"></i></div>
                            <div class='show-info-tag'>Release Year</div>
                            <div class='show-info-score'>2021</div>
                        </div>
                    </div>
                    <div class='show-description roboto'>
                        <h4>Storyline</h4>
                        <p>Hundreds of bankrupt players receive strange invitations to compete in children's games at big
                            stakes. However, a tantalizing prize awaits the champion.</p>
                        <h4>Hwang Dong-hyuk</h4>
                        <p>Director</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="show-detail text-light" id='cast'>
            <h2 class='section-title mb-5'>Cast</h2>
            <div class="card-group cast-carousel cs-hidden text-light" id="autoWidth2">
                <div class="cast-card card">
                    <img src="https://image.tmdb.org/t/p/w500/s3Sv4bZORQ5DuZJahgU2X0RgMUQ.jpg" class="cast-image">
                    <div class="card-body">
                        <h5 class="card-title">Lee Jung-jae</h5>
                        <p class="card-text">Seong Gi-hun / "No. 456"</p>
                    </div>
                </div>
                <div class="cast-card card">
                    <img src="https://image.tmdb.org/t/p/w500/hfejrQ8gjRWCheiKpJANajXT0xi.jpg" class="cast-image">
                    <div class="card-body">
                        <h5 class="card-title">Park Hae-soo</h5>
                        <p class="card-text">Cho Sang-woo / "No. 218"</p>
                    </div>
                </div>
                <div class="cast-card card">
                    <img src="https://image.tmdb.org/t/p/w500/2nKZaOgwpJbJXegDISQIdfsfnm0.jpg"
                        class="d-block w-100 cast-image">
                    <div class="card-body">
                        <h5 class="card-title">Jung Ho-yeon</h5>
                        <p class="card-text">Kang Sae-byeok / "No. 067"</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="show-detail text-light" id='reviews'>
            <h2 class='section-title mb-5'>Review</h2>
            <div class="card-group review-carousel cs-hidden text-light" id="autoWidth3">
                <div class="card review-card">
                    <div class="d-flex">
                        <img src="https://randomuser.me/api/portraits/women/4.jpg" alt="" class='reviewer'>
                        <div class="flex-column reviewer-detail">
                            <h4>Jane Doe</h4>
                            <p>21/11/2021</p>
                        </div>
                    </div>
                    <strong>Amazing Show!</strong>
                    <p class="lead text-muted">This show is unbelievable, loved it!</p>
                    <p class='review-rating fw-bolder'><i class="text-warning fas fa-star yellow"></i> 8.5/10 </p>
                </div>
                <div class="card review-card">
                    <div class="d-flex">
                        <img src="https://randomuser.me/api/portraits/women/4.jpg" alt="" class='reviewer'>
                        <div class="flex-column reviewer-detail">
                            <h4>Jane Doe</h4>
                            <p>21/11/2021</p>
                        </div>
                    </div>
                    <strong>Amazing Show!</strong>
                    <p class="lead text-muted">This show is unbelievable, loved it!</p>
                    <p class='review-rating fw-bolder'><i class="text-warning fas fa-star yellow"></i> 8.5/10 </p>
                </div>
                <div class="card review-card">
                    <div class="d-flex">
                        <img src="https://randomuser.me/api/portraits/women/4.jpg" alt="" class='reviewer'>
                        <div class="flex-column reviewer-detail">
                            <h4>Jane Doe</h4>
                            <p>21/11/2021</p>
                        </div>
                    </div>
                    <strong>Amazing Show!</strong>
                    <p class="lead text-muted">This show is unbelievable, loved it!</p>
                    <p class='review-rating fw-bolder'><i class="text-warning fas fa-star yellow"></i> 8.5/10 </p>
                </div>
                <div class="card review-card">
                    <div class="d-flex">
                        <img src="https://randomuser.me/api/portraits/women/4.jpg" alt="" class='reviewer'>
                        <div class="flex-column reviewer-detail">
                            <h4>Jane Doe</h4>
                            <p>21/11/2021</p>
                        </div>
                    </div>
                    <strong>Amazing Show!</strong>
                    <p class="lead text-muted">This show is unbelievable, loved it!</p>
                    <p class='review-rating fw-bolder'><i class="text-warning fas fa-star yellow"></i> 8.5/10 </p>
                </div>
                <div class="card review-card">
                    <div class="d-flex">
                        <img src="https://randomuser.me/api/portraits/women/4.jpg" alt="" class='reviewer'>
                        <div class="flex-column reviewer-detail">
                            <h4>Jane Doe</h4>
                            <p>21/11/2021</p>
                        </div>
                    </div>
                    <strong>Amazing Show!</strong>
                    <p class="lead text-muted">This show is unbelievable, loved it!</p>
                    <p class='review-rating fw-bolder'><i class="text-warning fas fa-star yellow"></i> 8.5/10 </p>
                </div>


            </div>
            <div class="d-flex justify-content-center">
                <a href="" class="btn btn-danger"><i class="far fa-edit"></i> Add a Review</a>
            </div>
        </div>
        <section class='container p-3 text-light'>
            <h2 class='section-title mb-5'>More</h2>
            <ul class="movie-carousel card-group list-unstyled cs-hidden text-light" id="autoWidth">
                <li class="card movie-card">
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
                <li class="card movie-card">
                    <a href=""><img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">Money heist</h5>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-check text-danger"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>

                </li>
                <li class="card movie-card">
                    <a href=""><img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">Money heist</h5>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-check text-danger"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>

                </li>
                <li class="card movie-card">
                    <a href=""><img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">Money heist</h5>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-check text-danger"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>

                </li>
                <li class="card movie-card">
                    <a href=""><img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">Money heist</h5>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-check text-danger"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>

                </li>
                <li class="card movie-card">
                    <a href=""><img src=" https://picsum.photos/200/300?random=10" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">Money heist</h5>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted">2021</p>
                            <p class="card-info"><i class="fas fa-check text-danger"></i> <span
                                    class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                        </div>
                    </div>
                </li>
            </ul>
            </s>
        </section>
    @endsection
