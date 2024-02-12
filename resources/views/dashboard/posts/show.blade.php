@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row d-flex mb-4">
        <div class="col-lg-8 my-3">
            <h2 class="mb-2">{{ $post->title }}</h2>

            <a href="/dashboard/posts" class="btn btn-success"><span data-feather="arrow-left"></span> Back to Posts</a>
            <a href="/dashboard/posts/{{  $post->slug }}/edit" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>
            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-danger border-0" onclick="return confirm('Are you sure?')"><span data-feather="trash-2"></span> Delete</button>
            </form>
            
            @if ($post->image)
            <div style="max-height: 350px; overflow:hidden">
                <img src="{{ asset('storage/'. $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
            </div>
            @else
            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
            @endif
            <div class="my-3 fs-6">
                {!! $post->body !!} {{-- agar tag html pada teks dieksekusi sebagi tag html --}}
            </div>
        
        </div>
    </div>
</div>
@endsection