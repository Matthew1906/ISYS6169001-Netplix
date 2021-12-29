<div class="mb-4">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control @error('name')is-invalid @enderror" name="name"
        value="{{ old('name') ?? $actor->name }}">
    @error('name')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="image_url" class="form-label">Image Url</label>
    <input type="text" class="form-control @error('image_url')is-invalid @enderror" name="image_url"
        value="{{ old('image_url') ?? $actor->image_url }}">
    @error('image_url')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<button type="submit" class="btn btn-danger w-25">{{ $action ?? 'Submit' }}</button>
