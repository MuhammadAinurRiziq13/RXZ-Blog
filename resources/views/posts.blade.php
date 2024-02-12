@extends('layouts.main')

@section('container')   

    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-md-8 mb-5">
                <article>
                    <h2 class="mb-2">{{ $post->title }}</h2>
                    <p>By: <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }} </a>in <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>
                    
                    @if ($post->image)
                        <img src="{{ asset('storage/'. $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                    @else
                        <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                    @endif
                    <div class="my-3 fs-6">
                        {!! $post->body !!} {{-- agar tag html pada teks dieksekusi sebagi tag html --}}
                    </div>
                </article>
            
                <a href="/posts">Back to Posts</a>
            </div>
        </div>
    </div>

@endsection




