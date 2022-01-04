@extends('layouts.app',['title' => 'Add Actor'])
@section('library')
    <link type="text/css" rel="stylesheet" href="{{ asset('css/form.css') }}" />
@endsection
@section('content')
    <div class="container py-5 text-light" style="">
        <div class="p-3">
            <h2 class="form-title mb-4">Add Actor</h2>
            <form action="" method="POST">
                @csrf
                @include('actor.partials.form-control',['action' => 'Create'])
            </form>
        </div>
    </div>
@endsection
