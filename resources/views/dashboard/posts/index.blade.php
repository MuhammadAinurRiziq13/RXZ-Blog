@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">My Posts</h1>
</div>
@if (session()->has('success'))
<div class="alert alert-success alert-dismissible fade show col-lg-10" role="alert">
  {{ session('success') }}
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
@endif
<div class="table-responsive col-lg-10">
    <a href="/dashboard/posts/create" class="btn btn-primary mb-3"> <span data-feather="file-plus"></span> Create New Post</a>
    <table class="table table-striped table-sm">
      <thead>
        <tr>
          <th scope="col">No</th>
          <th scope="col">Title</th>
          <th scope="col">Category</th>
          <th scope="col">Action</th>
        </tr>
      </thead>
      <tbody>
        @foreach ($posts as $post)
        <tr>
          <td>{{ $loop->iteration }}</td>
          <td>{{  $post->title }}</td>
          <td>{{  $post->category->name }}</td>
          <td>
            <a href="/dashboard/posts/{{  $post->slug }}" class="badge bg-info"><span data-feather="eye"></span></a>
            <a href="/dashboard/posts/{{  $post->slug }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
              @method('delete')
              @csrf
              <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?')"><span data-feather="trash-2"></span></button>
            </form>
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
@endsection

{{-- Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates iste accusantium molestias 
asperiores consectetur reprehenderit facere, sint quae? Eligendi sit ea alias nisi reprehenderit 
debitis voluptates, aut labore, velit explicabo aspernatur perferendis iure? Dolore totam pariatur, 
quibusdam cum aliquid dolor ipsam molestias sequi corrupti ex, veniam ratione repellat mollitia 
magnam dolorum vel aliquam incidunt reprehenderit, beatae nemo rem repellendus laudantium quo. 

Laudantium esse tempora asperiores molestias. Sit magnam fugiat modi nemo laboriosam ducimus necessitatibus, 
animi reiciendis at culpa, corrupti quo reprehenderit libero qui itaque nisi et natus, dicta autem cupiditate 
enim aliquid neque quos? Neque error perspiciatis eaque voluptas modi fugit laborum voluptates consequatur 
laboriosam dolorem ipsum placeat nemo nisi unde ex doloremque quas voluptatibus, iste alias. 

Quam esse iusto dolores! Et, deleniti. Illo mollitia vitae dignissimos debitis possimus ad aspernatur 
tempore corrupti beatae nisi nobis nesciunt maiores id velit odio dicta neque, temporibus enim quisquam. 
Rerum aut corporis magnam, dolore sequi unde. Aspernatur dicta et earum vitae sapiente, perspiciatis saepe 
debitis quisquam asperiores, voluptates quaerat eaque dolores consequuntur. 

Nostrum, quam esse commodi fugiat perspiciatis, iste maxime facilis minus nemo eius possimus hic, 
dicta architecto distinctio ducimus illo. Eos maiores quia molestiae itaque doloremque nulla. Repellat 
incidunt magni est consequatur? --}}