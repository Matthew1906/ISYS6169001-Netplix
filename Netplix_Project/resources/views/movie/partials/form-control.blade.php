<div class="mb-4">
    <label for="title" class="form-label">Title</label>
    <input type="text" class="form-control @error('title')is-invalid @enderror" name="title"
        value="{{ old('title') ?? $movie->title }}">
    @error('title')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="description" class="form-label">Description</label>
    <textarea class="form-control @error('description')is-invalid @enderror" name="description"
        rows="7">{{ old('description') ?? $movie->description }}</textarea>
    @error('description')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="category" class="form-label">Category</label>
    <select name="category" class=" form-control @error('category')is-invalid @enderror">
        <option disabled selected>-- Open this select menu --</option>
        @foreach ($categories as $category)
            <option value="{{ $category->category_id }}"
                {{ $movie->category_id == $category->category_id ? 'selected' : '' }}>{{ $category->name }}</option>
        @endforeach
    </select>
    @error('category')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="genre" class="form-label">Genre</label>
    <select name="genres[]" class=" form-control select2 @error('genres')is-invalid @enderror" multiple>
        @foreach ($genres as $genre)
            <option value="{{ $genre->genre_id }}"
                {{ in_array($genre->genre_id, $movie->genres->pluck('genre_id')->toArray()) ? 'selected' : '' }}>
                {{ $genre->name }}
            </option>
        @endforeach
    </select>
    @error('genres')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="actors" class="form-label">Actors</label>
    <div class="card">
        <div class="card-body" id="actor-card">
            @if ($movie->actors->count() > 0)
                @foreach ($actors as $actor)
                    @if (in_array($actor->actor_id, $movie->actors->pluck('actor_id')->toArray()))
                        <div class="row align-items-center">
                            <div class="col-md-6">
                                <label for="actor" class="form-label">Actor</label>
                                <select name="actors[]" class=" form-control">
                                    <option disabled selected>-- Open this select menu --</option>
                                    @foreach ($actors as $currActor)
                                        <option value="{{ $currActor->actor_id }}"
                                            data-image="{{ $currActor->image_url }}"
                                            {{ $currActor == $actor ? 'selected' : '' }}>
                                            {{ $currActor->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="characters" class="form-label">Character Name</label>
                                <input type="text" name="characters[]" class="form-control"
                                    value="{{ $actor->filter($movie->show_id)->character }}">
                            </div>
                        </div>
                    @endif
                @endforeach
            @else
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <label for="actor" class="form-label">Actor</label>
                        <select name="actors[]" class=" form-control js-states actor-select">
                            <option disabled selected>-- Open this select menu --</option>
                            @foreach ($actors as $currActor)
                                <option value="{{ $currActor->actor_id }}"
                                    data-image="{{ $currActor->image_url }}">
                                    {{ $currActor->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="characters" class="form-label">Character Name</label>
                        <input type="text" name="characters[]" class="form-control">
                    </div>
                </div>
            @endif
        </div>
        <div class="card-footer d-flex justify-content-end">
            <button class="btn btn-sm btn-primary" id="addMore">Add more</button>
        </div>
    </div>
    @error('actors')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="director" class="form-label">Director</label>
    <input type="text" class="form-control @error('director')is-invalid @enderror" name="director"
        value="{{ old('director') ?? $movie->director }}">
    @error('director')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="release_date" class="form-label">Release Date</label>
    <input type="date" class="form-control @error('release_date')is-invalid @enderror" name="release_date"
        value="{{ old('release_date') ?? date('Y-m-d', strtotime($movie->release_date)) }}">
    @error('release_date')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="image_url" class="form-label">Image Url</label>
    <input type="text" class="form-control @error('image_url')is-invalid @enderror" name="image_url"
        value="{{ old('image_url') ?? $movie->image_url }}">
    @error('image_url')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="bg_url" class="form-label">Background Url</label>
    <input type="text" class="form-control @error('bg_url')is-invalid @enderror" name="bg_url"
        value="{{ old('bg_url') ?? $movie->bg_url }}">
    @error('bg_url')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<button type="submit" class="btn btn-danger form-control">{{ $action ?? 'Submit' }}</button>
