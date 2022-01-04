@extends('layouts.app',['title' => $actor->name])
@section('library')
    <link rel="stylesheet" href="{{ asset('css/actor-detail.css') }}">
@endsection
@section('content')
    <div class="container py-5 px-3 text-light">
        <div class="row mb-4">
            <div class="col-md-3">
                <div class="image-container position-relative mb-3">
                    @can('addActor')
                        <div class="position-absolute top-0 start-0 h-100 overlay">
                            <div class="position-absolute top-0 end-0 action-button-container">
                                <a href="{{ route('edit-actor', $actor->actor_id) }}"
                                    class="action-button btn btn-danger p-2 fs-5 text-light">
                                    <i class="far fa-edit"></i>
                                </a>
                                <form action="{{ route('delete-actor', $actor->actor_id) }}" method="POST">
                                    @csrf
                                    @method('delete')
                                    <button class="action-button btn btn-danger p-2 fs-4 text-light"><i
                                            class="far fa-trash-alt"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                    @endcan
                    <img src="{{ $actor->image_url }}" class="actor-image" alt="">
                </div>
                <h3 class="mb-4">Personal Info</h3>
                <h6>Popularity</h6>
                <p class="text-muted">{{ $actor->popularity }}</p>
                <h6>Gender</h6>
                <p class="text-muted">{{ $actor->gender }}</p>
                <h6>Birthday</h6>
                <p class="text-muted">{{ $actor->dob }}</p>
                <h6>Place of Birth</h6>
                <p class="text-muted">{{ $actor->place_of_birth }}</p>
            </div>

            <div class="col-md-9 container px-3 py-2">
                <div class="actor-info">
                    <h2 class="mb-3">{{ $actor->name }}</h2>
                    <h6 class="mb-3">Biography</h6>
                    @if (!$actor->biography)
                        <div class="alert alert-info">
                            <p>There no biography yet for this person</p>
                        </div>
                    @else
                        <p>{{ $actor->biography }}</p>
                    @endif
                </div>
                <h3 class="mb-4">Known For</h3>
                <div class="row">
                    @forelse ($actor->movies as $movie)
                        <div class="col-md-3">
                            <div class="card">
                                <div class="card-image p-3">
                                    <a href="{{ route('show-movie', $movie->show_id) }}" class="w-100 h-100">
                                        <img src="{{ $movie->image_url }}" class="card-img-top" alt="...">
                                    </a>
                                </div>
                                <div class="card-body">
                                    <p class="card-title text-light">{{ $movie->title }}</p>
                                </div>
                            </div>
                        </div>
                    @empty
                        <div class="alert alert-info">
                            <p>There no cast yet for this person</p>
                        </div>
                    @endforelse
                </div>
            </div>
        </div>
    </div>
@endsection
