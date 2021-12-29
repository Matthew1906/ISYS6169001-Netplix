@extends('layouts.app',['title' => 'Actors'])
@section('library')
    <link rel="stylesheet" href="{{ asset('css/actor.css') }}">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js"
        integrity="sha512-efUTj3HdSPwWJ9gjfGR71X9cvsrthIA78/Fvd/IN+fttQVy7XWkOAXb295j8B3cmm/kFKVxjiNYzKw9IQJHIuQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
@endsection
@section('content')
    <div class="container mt-3 mb-4">
        <section class="header-section d-flex justify-content-between align-items-center">
            <h2 class="actor-header">Actors</h2>
            <div class="d-flex">
                <input type="text" name="inputActor" class="px-3 py-2 me-3" id="inputActor"
                    placeholder="Search Actor Address">
                @can('addActor')
                    <a href="{{ route('create-actor') }}" type="button" class="btn btn-danger">Add Actor</a>
                @endcan
            </div>
        </section>
    </div>
    <section class="body-section mb-5">
        <div class="container">
            <div class="row row-cols-1 row-cols-md-5 g-4 mb-5" id="actor-container">
                @include('actor.data')
            </div>
            {{ $actors->appends(request()->except('page'))->links() }}
        </div>
    </section>
    <script>
        $('#inputActor').keyup(function() {
            var search = $(this).val();
            $('#paginator-container').remove();
            $.ajax({
                    url: '?search=' + search,
                    type: "get",
                })
                .done(function(data) {
                    $("#actor-container").empty();
                    $("#actor-container").append(data.html);
                })
                .fail(function(jqXHR, ajaxOptions, thrownError) {
                    console.log(jqXHR.responseJSON);
                    alert('server not responding...');
                });
        });
    </script>
@endsection
