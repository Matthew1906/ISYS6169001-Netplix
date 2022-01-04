@extends('layouts.app',['title' => 'Add Movie'])
@section('library')
    <link type="text/css" rel="stylesheet" href="{{ asset('css/form.css') }}" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
@endsection
@section('content')
    <div class="container py-5 text-light" style="">
        <div class="p-3">
            <h2 class="form-title mb-4">Add Movie</h2>
            <form action="{{ route('store-movie') }}" method="POST">
                @csrf
                @include('movie.partials.form-control',['action' => 'Create'])
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.select2').select2({
                placeholder: 'Select an option'
            });

            const cardBody = document.querySelector('#actor-card');
            const addButton = document.querySelector('#addMore');
            addButton.addEventListener('click', (e) => {
                e.preventDefault();
                cardBody.innerHTML += `<div class="row align-items-center">
                    <div class="col-md-6">
                        <label for="actor" class="form-label">Actor</label>
                        <select name="actors[]" class=" form-control js-states actor-select">
                            <option disabled selected>-- Open this select menu --</option>
                            @foreach ($actors as $currActor)
                                <option value="{{ $currActor->actor_id }}" data-image="{{ $currActor->image_url }}">
                                    {{ $currActor->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="characters" class="form-label">Character Name</label>
                        <input type="text" name="characters[]" class="form-control">
                    </div>
                </div>`;
            });
        });
    </script>
@endsection
