@extends('layouts.app',['title' => 'Profile'])
@section('library')
    <link rel="stylesheet" href="{{ asset('css/profile.css') }}">
@endsection
@section('content')
    <div class="container-fluid">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-xl-3 d-flex flex-column justify-content-center align-items-center">
                <h4 class="fs-1 fw-bolder text-light mb-3">My <span style="color: #FB3842;">Profile</span></h4>
                @if ($user->image_url)
                    <img src="{{ $user->image_url }}" class="mb-3"
                        style="border-radius: 50%; width: 150px; height: 150px; display: block;">
                @else
                    <span style="font-size:7rem" class="text-light">
                        <i class="fas fa-user-circle"></i>
                    </span>

                @endif
                <div class="vw-25 text-center">
                    <p class="name fs-3 fw-bolder">{{ $user->name }}</p>
                    <p class="email fs-3">{{ $user->email }}</p>
                </div>
            </div>
            <div class="col-xl-7 m-5">
                <p class="fw-bolder fs-1 p-3 text-xl-start text-center" style="color: #FB3842;">Update Profile</p>
                <form action="" method="POST">
                    @csrf
                    @method('put')
                    <div class="mb-4">
                        <div class="form-content p-3">
                            <label class="fs-3 me-5">Username</label>
                            <input class="fs-3 @error('username')is-invalid @enderror" type="text" name='username'
                                value="{{ old('username') ?? $user->name }}">
                        </div>
                        @error('username')
                            <small class="text-danger">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-4">
                        <div class="form-content p-3">
                            <label class="fs-3 me-5">Email</label>
                            <input class="fs-3 @error('email')is-invalid @enderror" type="text" name="email"
                                value="{{ old('email') ?? $user->email }}">
                        </div>
                        @error('email')
                            <small class="text-danger">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-4">
                        <div class="form-content p-3">
                            <label class="fs-3 me-5">DOB</label>
                            <input class="fs-3 @error('dob')is-invalid @enderror" type="date" placeholder="Fill in your DOB"
                                name="dob" value="{{ old('dob') ?? $user->dob }}">
                        </div>
                        @error('dob')
                            <small class="text-danger">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-4">
                        <div class="form-content p-3 ">
                            <label class="fs-3 me-5">Phone</label>
                            <input class="fs-3" type="text" placeholder="Fill in your Phone Number" name="phone"
                                value="{{ old('phone') ?? $user->phone }}">
                        </div>
                        @error('phone')
                            <div class="text-danger">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <button type="submit" class="mt-3 btn btn-danger form-control">Save Changes</button>
                    {{-- <button
                        style="color: white; background: transparent; outline: none; border: none; right: 0; background-color: #E50914; border-radius: 25px;"
                        class="fw-bold m-xl-3 me-5 vw-2.5 w-20 float-end"><i class="fas fa-save"></i>Save
                        Changes</button> --}}
                </form>
            </div>
        </div>
    </div>
@endsection
