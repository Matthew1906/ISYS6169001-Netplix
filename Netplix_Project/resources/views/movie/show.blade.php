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
        <div class="bg-image" style='background-image: url({{ $movie->bg_url }});'>
            <div class="row show-detail" id='show-detail'>
                <div class='col'>
                    <img src="{{ $movie->image_url }}" class='show-image'>
                </div>
                <div class='col-lg-8 text-light container'>
                    <div class='show-title d-flex roboto'>
                        <h1 class="w-75">{{ $movie->title }}</h1>
                        <div class="d-flex w-50">
                            <a href='#' class='btn btn-danger'>+ Add to Watchlist</a>
                            <a href="#" class='btn btn-outline-light'><i class="fas fa-share-alt"></i></a>
                        </div>
                    </div>
                    <div class='d-flex poppins'>
                        @foreach ($genres as $genre)
                            <a href='#' class="genre">{{ $genre->name }}</a>
                        @endforeach
                    </div>
                    <div class='d-flex show-info poppins'>
                        <div>
                            <div><i class="fas fa-star text-warning"></i></div>
                            <div class='show-info-tag'>Rating</div>
                            <div class='show-info-score'>{{ 0.0 }}</div>
                        </div>
                        <div>
                            <div><i class="far fa-calendar-alt text-primary"></i></div>
                            <div class='show-info-tag'>Release Year</div>
                            <div class='show-info-score'>{{ substr($movie->release_date, 0, 4) }}</div>
                        </div>
                    </div>
                    <div class='show-description roboto'>
                        <h4>Storyline</h4>
                        <p>{{ $movie->description }}</p>
                        <h4>{{ $movie->director }}</h4>
                        <p>Director</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="show-detail text-light" id='cast'>
            <h2 class='section-title mb-5'>Cast</h2>
            <div class="card-group cast-carousel cs-hidden text-light" id="autoWidth2">
                @foreach ($actors as $actor)
                    <div class="cast-card card">
                        <img src="{{ $actor->image_url }}" class="cast-image">
                        <div class="card-body">
                            <h5 class="card-title">{{ $actor->name }}</h5>
                            <p class="card-text">{{ $actor->character_name }}</p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="show-detail text-light" id='reviews'>
            <h2 class='section-title mb-5'>Review</h2>
            <div class="card-group review-carousel cs-hidden text-light" id="autoWidth3">
                @forelse ($reviews as $review)
                    <div class="card review-card">
                        <div class="d-flex">
                            <img src="{{ $review->user->image_url }}" class='reviewer'>
                            <div class="flex-column reviewer-detail">
                                <h4>{{ $review->user->name }}</h4>
                                <p>{{ $review->review_date }}</p>
                            </div>
                        </div>
                        <strong>Amazing Show!</strong>
                        <p class="lead text-muted">{{ $review->body }}</p>
                        <p class='review-rating fw-bolder'><i class="text-warning fas fa-star yellow"></i> 8.5/10 </p>
                    </div>
                @empty
                    <div>
                        There are still no comment
                    </div>
                @endforelse
            </div>
            <div class="d-flex justify-content-center mt-3">
                <a href="" class="btn btn-danger"><i class="far fa-edit"></i> Add a Review</a>
            </div>
        </div>
        <section class='container p-3 text-light'>
            <h2 class='section-title mb-5'>More</h2>
            <ul class="movie-carousel card-group list-unstyled cs-hidden text-light" id="autoWidth">
                @foreach ($movies as $movie)
                    <li class="card movie-card">
                        <a href="{{ route('show-movie', $movie->show_id) }}"><img src="{{ $movie->image_url }}"
                                class="card-img-top" alt="..."></a>
                        <div class="card-body">
                            <h5 class="card-title">$movie->title</h5>
                            <div class="d-flex justify-content-between">
                                <p class="text-muted">{{ substr($movie->release_date, 0, 4) }}</p>
                                <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                        class="text-warning"><i class="fas fa-star text-warning"></i> 8.5</span></p>
                            </div>
                        </div>
                    </li>
                @endforeach
            </ul>
            </s>
        </section>
    @endsection
