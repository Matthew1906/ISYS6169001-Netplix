@foreach ($movies as $movie)
    <div class="col-xl-2 col-5 me-5">
        <a href="{{ route('show-movie', $movie->show_id) }}"><img src="{{ $movie->image_url }}"
                class="movie-image" alt="..."></a>
        <div class="movie-title fs-5 py-2" style="height: 4.5rem">{{ $movie->title }}</div>
        <div class="d-flex justify-content-between">
            <p class="text-muted">{{ $movie->release_date->format('Y') }}</p>
            <p class="card-info"><i class="fas fa-plus text-muted"></i> <span class="text-warning"><i
                        class="fas fa-star text-warning"></i>
                    {{ $movie->rating }}</span></p>
        </div>
    </div>
@endforeach
