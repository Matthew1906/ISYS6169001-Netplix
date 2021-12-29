@foreach ($actors as $actor)
    <div class="col">
        <div class="card">
            <div class="card-image position-relative">
                @can('addActor')
                    <div class="position-absolute top-0 start-0 w-100 h-100 overlay">
                        <div class="position-absolute bottom-0 end-0">
                            <a href="{{ route('edit-actor', $actor->actor_id) }}"
                                class="action-button btn btn-danger p-2 fs-5 text-light">
                                <i class="far fa-edit"></i>
                            </a>
                            <form action="{{ route('delete-actor', $actor->actor_id) }}" method="POST">
                                @csrf
                                @method('delete')
                                <button class="action-button btn btn-danger p-2 fs-5 text-light"><i
                                        class="far fa-trash-alt"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                @endcan
                <img src="{{ $actor->image_url }}" class="card-img-top" alt="...">
            </div>
            <div class="card-body">
                <h5 class="card-title text-light">{{ $actor->name }}</h5>
                <p class="card-text text-muted"> {{ $actor->movie_name }}</p>
            </div>
        </div>
    </div>
@endforeach
