@extends('layouts.app',['title' => 'Actors'])
@section('library')
    <link rel="stylesheet" href="{{ asset('css/actor.css') }}">
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
        </div>
    </section>
    <div class="ajax-load auto-load text-center" style="display: none">
        <svg version="1.1" id="L9" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
            y="0px" height="60" viewBox="0 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve">
            <path fill="#000"
                d="M73,50c0-12.7-10.3-23-23-23S27,37.3,27,50 M30.9,50c0-10.5,8.5-19.1,19.1-19.1S69.1,39.5,69.1,50">
                <animateTransform attributeName="transform" attributeType="XML" type="rotate" dur="1s" from="0 50 50"
                    to="360 50 50" repeatCount="indefinite" />
            </path>
        </svg>
    </div>
    <script>
        var page = 1;
        $(window).scroll(function() {
            if ($(window).scrollTop() + $(window).height() + 1 >= $(document).height() &&
                {{ $pages }} > page && $('#inputActor').val() == "") {
                page++;
                loadMoreData(page);
            }
        });

        function loadMoreData(page) {
            $.ajax({
                    url: '?page=' + page,
                    type: "get",
                    beforeSend: function() {
                        $('.ajax-load').show();
                    }
                })
                .done(function(data) {
                    if (data.html == " ") {
                        $('.ajax-load').html("No more records found");
                        return;
                    }
                    $('.ajax-load').hide();
                    $("#actor-container").append(data.html);
                })
                .fail(function(jqXHR, ajaxOptions, thrownError) {
                    alert('server not responding...');
                });
        }

        $('#inputActor').keyup(function() {
            var search = $(this).val();
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
