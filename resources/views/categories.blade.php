@extends('layouts.main')

@section('container')    
<h1>Posts Categories</h1>

<div class="container">
    <div class="row">
        @foreach ($categories as $category)
        <div class="col-md-4">
            <a href="/posts?category={{ $category->slug }}">            
                <div class="card text-bg-dark">
                    <img src="https://source.unsplash.com/500x400?{{ $category->name }}" class="card-img" alt="{{ $category->name }}">
                    <div class="card-img-overlay d-flex align-items-end p-0">
                        <h4 class="card-title p-2 flex-fill text-center m-0" style="background-color: rgb(0, 0, 0,0.7)">{{ $category->name }}</h4>
                    </div>
                </div>
            </a>
        </div>
        @endforeach
    </div>
</div>

@endsection

