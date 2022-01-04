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
    <label for="gender" class="form-label">Gender</label>
    <select name="gender" class=" form-control @error('gender')is-invalid @enderror">
        <option disabled selected>-- Open this select menu --</option>
        <option value="Male" {{ $actor->gender == 'Male' ? 'selected' : '' }}>Male</option>
        <option value="Female" {{ $actor->gender == 'Female' ? 'selected' : '' }}>Female</option>
    </select>
    @error('category')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="biography" class="form-label">Biography</label>
    <textarea class="form-control @error('biography')is-invalid @enderror" name="biography"
        rows="7">{{ old('biography') ?? $actor->biography }}</textarea>
    @error('biography')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="dob" class="form-label">Date of birth</label>
    <input type="date" class="form-control @error('dob')is-invalid @enderror" name="dob"
        value="{{ old('dob') ?? $actor->dob }}">
    @error('dob')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<div class="mb-4">
    <label for="place_of_birth" class="form-label">Place of Birth</label>
    <input type="text" class="form-control @error('place_of_birth')is-invalid @enderror" name="place_of_birth"
        value="{{ old('place_of_birth') ?? $actor->place_of_birth }}">
    @error('place_of_birth')
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
<div class="mb-4">
    <label for="popularity" class="form-label">Popularity</label>
    <input type="number" step="0.01" class="form-control @error('popularity')is-invalid @enderror" name="popularity"
        value="{{ old('popularity') ?? $actor->popularity }}">
    @error('popularity')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror
</div>
<button type="submit" class="btn btn-danger w-25">{{ $action ?? 'Submit' }}</button>
