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
                            <div class='show-info-score'>{{ $movie->rating }}</div>
                        </div>
                        <div>
                            <div><i class="far fa-calendar-alt text-primary"></i></div>
                            <div class='show-info-tag'>Release Year</div>
                            <div class='show-info-score'>{{ $movie->release_date->format('Y') }}</div>
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
                        <div class="d-flex align-items-center mb-3">
                            @if ($review->user->image_url)
                                <img src="{{ $review->user->image_url }}" class='reviewer'>
                            @else
                                <span style="font-size:5.5rem">
                                    <i class="fas fa-user-circle"></i>
                                </span>
                            @endif
                            <div class="flex-column reviewer-detail">
                                <h4>{{ $review->user->name }}</h4>
                                <p>{{ $review->review_date->diffForHumans() }}</p>
                            </div>
                        </div>
                        <p class="lead text-muted">{{ $review->body }}</p>
                        <p class='review-rating fw-bolder'><i class="text-warning fas fa-star yellow"></i>
                            {{ $review->rating }} / 10 </p>
                    </div>
                @empty
                    <div class="row">
                        <div class="col-md-6">
                            <div class="alert alert-danger">
                                <p>There is no Review</p>
                            </div>
                        </div>
                    </div>
                @endforelse
            </div>
            @can('review', $movie)
                <div class="d-flex justify-content-center mt-3" id="review-container">
                    <button class="btn btn-danger add-review-btn"><i class="far fa-edit"></i> Add a
                        Review</button>
                </div>
            @endcan
        </div>
        <section class='container p-3 text-light'>
            <h2 class='section-title mb-5'>More</h2>
            <ul class="movie-carousel card-group list-unstyled cs-hidden text-light" id="autoWidth">
                @foreach ($movies as $currMovie)
                    <li class="card movie-card">
                        <a href="{{ route('show-movie', $currMovie->show_id) }}"><img
                                src="{{ $currMovie->image_url }}" class="card-img-top" alt="..."></a>
                        <div class="card-body">
                            <h5 class="card-title">{{ $currMovie->title }}</h5>
                            <div class="d-flex justify-content-between">
                                <p class="text-muted">{{ $currMovie->release_date->format('Y') }}</p>
                                <p class="card-info"><i class="fas fa-plus text-muted"></i> <span
                                        class="text-warning"><i class="fas fa-star text-warning"></i>
                                        {{ $currMovie->rating }}</span></p>
                            </div>
                        </div>
                    </li>
                @endforeach
            </ul>
        </section>
        <script>
            const reivewContainer = document.querySelector('#review-container');
            const addButton = document.querySelector('.add-review-btn');
            if (addButton) {
                addButton.addEventListener('click', (e) => {
                    e.preventDefault();
                    addButton.style.display = "none";
                    reivewContainer.classList.remove('justify-content-center');
                    reivewContainer.innerHTML += `
                    <form action="{{ route('store-review', $movie->show_id) }}" method="POST" class="mb-4 w-75">
                    @csrf
                    <div class="mb-3">
                        <label for="rating" class="form-label">Rating (1 To 10)</label>
                        <input type="number" class="form-control @error('rating')is-invalid @enderror" name="rating"
                            value="{{ old('rating') ?? '' }}" min="1" max="10">
                        @error('rating')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="description"
                            class="form-label @error('description')is-invalid @enderror">Body</label>
                        <textarea class="form-control" name="description"
                            rows="3">{{ old('description') ?? '' }}</textarea>
                        @error('description')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary form-control">Submit</button>
                </form>
                    `;
                })
            }
        </script>
    @endsection
