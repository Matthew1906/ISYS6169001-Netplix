@extends('layouts.app',['title' => 'Edit Actor'])
@section('library')
    <link type="text/css" rel="stylesheet" href="{{ asset('css/form.css') }}" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js"
        integrity="sha512-efUTj3HdSPwWJ9gjfGR71X9cvsrthIA78/Fvd/IN+fttQVy7XWkOAXb295j8B3cmm/kFKVxjiNYzKw9IQJHIuQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
