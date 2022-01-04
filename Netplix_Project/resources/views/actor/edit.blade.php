@extends('layouts.app',['title' => 'Edit Actor'])
@section('library')
    <link type="text/css" rel="stylesheet" href="{{ asset('css/form.css') }}" />
@endsection
@section('content')
    <div class="container py-5 text-light" style="">
        <div class="p-3">
            <h2 class="form-title mb-4">Edit Actor</h2>
            <form action="{{ route('update-actor', $actor->actor_id) }}" method="POST">
                @csrf
                @method('put')
                @include('actor.partials.form-control',['action' => 'Edit'])
            </form>
        </div>
    </div>
@endsection
