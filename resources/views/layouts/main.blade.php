<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>RXZ Blog | {{ $title }} </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    {{-- css --}}
    <link rel="stylesheet" href="/css/style.css">
  </head>
  <body>
    @include('partials.navbar')

    <div class="container-fluid mt-4">
        @yield('container')
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>

{{-- App\Models\Post::create([
    'title' => 'Judul Ketiga',
    'category_id' => 3,
    'slug' =>'judul-ketiga',
    'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, sapiente?',
    'body' =>'<p>ipsum dolor sit amet consectetur adipisicing elit. Velit aspernatur error a est, odio inventore vero minus suscipit mollitia labore ab quasi quia animi quae officiis dolor quo autem, non incidunt voluptas facilis consectetur.</p><p> Distinctio quo nam ratione tenetur quasi accusantium provident deserunt quos nesciunt eligendi odio impedit eos quis ea, modi molestias dolore exercitationem in fuga laboriosam, nihil magnam? Error architecto est esse, nesciunt illum veritatis necessitatibus odit, accusamus officia sequi, consequuntur doloribus voluptas minima quaerat assumenda in totam labore mollitia harum dolorem. </p><p>Laboriosam neque exercitationem voluptatem libero doloremque qui molestias quas, dolorum rem accusamus totam obcaecati deleniti soluta distinctio, culpa asperiores. Minus rerum libero enim, cumque est quas accusamus fugiat sapiente et id quasi voluptate, eum reprehenderit harum?</p>'
]) --}}

{{-- untuk update data composer
      composer dump-autoload --}}