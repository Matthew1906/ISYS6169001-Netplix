@extends('layouts.app',['title' => 'Wachlist'])
@section('library')
    <link rel="stylesheet" href="{{ asset('css/watchlist.css') }}">
@endsection
@section('content')
    <div class="watchlist">
        <div class="title-section cust-container cust-row">
            <i class="fa fa-bookmark bookmark-icon textRed"></i>
            <h1 class="cust-row">My<span class="textRed">Watchlist</span></h1>
        </div>

        <div class="search-section cust-container cust-col">
            <div class="search-section__bar cust-row">
                <input type="text" name="" id="search-input" placeholder="Search your watchlist..."
                    class="search-section__input">
                <i class="fa fa-search search-icon"></i>
            </div>

            <div class="search-section__filter cust-row">
                <i class="fas fa-filter filter-icon"></i>
                <select class="form-select filter-select">
                    <option value="all" selected>All</option>
                    <option value="planning">Planned</option>
                    <option value="watching">Watching</option>
                    <option value="finished">Finished</option>
                </select>
            </div>
        </div>
        <div class="watchlist-section cust-container cust-col">
            <div class="watchlist-title cust-row">
                <h4 class="row-item">Poster</h4>
                <h4 class="row-item">Title</h4>
                <h4 class="row-item">Status</h4>
                <h4 class="row-item">Your Rating</h4>
                <h4 class="row-item">Public Rating</h4>
                <h4 class="row-item--action">Action</h4>
            </div>
            <div id="watchlist-container">
                @include('watchlists.data')
            </div>
            {{ $watchlists->appends(request()->except('page'))->links() }}
        </div>
    </div>
    <script>
        const filterSelect = document.querySelector('.filter-select');
        filterSelect.addEventListener("change", function() {
            $('#paginator-container').remove();
            $.ajax({
                    url: '?filter=' + this.value,
                    type: "get",
                })
                .done(function(data) {
                    $("#watchlist-container").empty();
                    $("#watchlist-container").append(data.html);
                })
                .fail(function(jqXHR, ajaxOptions, thrownError) {
                    console.log(jqXHR.responseJSON);
                    alert('server not responding...');
                });
        });

        $('#search-input').keyup(function() {
            var search = $(this).val();
            $('#paginator-container').remove();
            if (filterSelect.value != 'all') {
                $.ajax({
                        url: '?search=' + search + '&filter=' + filterSelect.value,
                        type: "get",
                    })
                    .done(function(data) {
                        $("#watchlist-container").empty();
                        $("#watchlist-container").append(data.html);
                    })
                    .fail(function(jqXHR, ajaxOptions, thrownError) {
                        console.log(jqXHR.responseJSON);
                        alert('server not responding...');
                    });
            } else {
                $.ajax({
                        url: '?search=' + search,
                        type: "get",
                    })
                    .done(function(data) {
                        $("#watchlist-container").empty();
                        $("#watchlist-container").append(data.html);
                    })
                    .fail(function(jqXHR, ajaxOptions, thrownError) {
                        console.log(jqXHR.responseJSON);
                        alert('server not responding...');
                    });
            }
        });
    </script>
@endsection
