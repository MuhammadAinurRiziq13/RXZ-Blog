<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
                
        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Mobile Programming',
            'slug' => 'mobile-programming'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);
        
        User::factory(3)->create();
        
        Post::factory(20)->create();

        User::create([
            'name' => 'M Ainur Riziq',
            'username' => 'ainurriziq',
            'email' => 'aziganteng26@gmail.com',
            'password' => bcrypt('password')
        ]);

        // User::create([
        //     'name' => 'Aji Alhamdani',
        //     'email' => 'Alhamdani@gmail.com',
        //     'password' => bcrypt('1234')
        // ]);

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' =>'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, sapiente?',
        //     'body' =>'<p>ipsum dolor sit amet consectetur adipisicing elit. Velit aspernatur error a est, odio inventore vero minus suscipit mollitia labore ab quasi quia animi quae officiis dolor quo autem, non incidunt voluptas facilis consectetur.</p><p> Distinctio quo nam ratione tenetur quasi accusantium provident deserunt quos nesciunt eligendi odio impedit eos quis ea, modi molestias dolore exercitationem in fuga laboriosam, nihil magnam? Error architecto est esse, nesciunt illum veritatis necessitatibus odit, accusamus officia sequi, consequuntur doloribus voluptas minima quaerat assumenda in totam labore mollitia harum dolorem. </p><p>Laboriosam neque exercitationem voluptatem libero doloremque qui molestias quas, dolorum rem accusamus totam obcaecati deleniti soluta distinctio, culpa asperiores. Minus rerum libero enim, cumque est quas accusamus fugiat sapiente et id quasi voluptate, eum reprehenderit harum?</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' =>'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, sapiente?',
        //     'body' =>'<p>ipsum dolor sit amet consectetur adipisicing elit. Velit aspernatur error a est, odio inventore vero minus suscipit mollitia labore ab quasi quia animi quae officiis dolor quo autem, non incidunt voluptas facilis consectetur.</p><p> Distinctio quo nam ratione tenetur quasi accusantium provident deserunt quos nesciunt eligendi odio impedit eos quis ea, modi molestias dolore exercitationem in fuga laboriosam, nihil magnam? Error architecto est esse, nesciunt illum veritatis necessitatibus odit, accusamus officia sequi, consequuntur doloribus voluptas minima quaerat assumenda in totam labore mollitia harum dolorem. </p><p>Laboriosam neque exercitationem voluptatem libero doloremque qui molestias quas, dolorum rem accusamus totam obcaecati deleniti soluta distinctio, culpa asperiores. Minus rerum libero enim, cumque est quas accusamus fugiat sapiente et id quasi voluptate, eum reprehenderit harum?</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' =>'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, sapiente?',
        //     'body' =>'<p>ipsum dolor sit amet consectetur adipisicing elit. Velit aspernatur error a est, odio inventore vero minus suscipit mollitia labore ab quasi quia animi quae officiis dolor quo autem, non incidunt voluptas facilis consectetur.</p><p> Distinctio quo nam ratione tenetur quasi accusantium provident deserunt quos nesciunt eligendi odio impedit eos quis ea, modi molestias dolore exercitationem in fuga laboriosam, nihil magnam? Error architecto est esse, nesciunt illum veritatis necessitatibus odit, accusamus officia sequi, consequuntur doloribus voluptas minima quaerat assumenda in totam labore mollitia harum dolorem. </p><p>Laboriosam neque exercitationem voluptatem libero doloremque qui molestias quas, dolorum rem accusamus totam obcaecati deleniti soluta distinctio, culpa asperiores. Minus rerum libero enim, cumque est quas accusamus fugiat sapiente et id quasi voluptate, eum reprehenderit harum?</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' =>'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, sapiente?',
        //     'body' =>'<p>ipsum dolor sit amet consectetur adipisicing elit. Velit aspernatur error a est, odio inventore vero minus suscipit mollitia labore ab quasi quia animi quae officiis dolor quo autem, non incidunt voluptas facilis consectetur.</p><p> Distinctio quo nam ratione tenetur quasi accusantium provident deserunt quos nesciunt eligendi odio impedit eos quis ea, modi molestias dolore exercitationem in fuga laboriosam, nihil magnam? Error architecto est esse, nesciunt illum veritatis necessitatibus odit, accusamus officia sequi, consequuntur doloribus voluptas minima quaerat assumenda in totam labore mollitia harum dolorem. </p><p>Laboriosam neque exercitationem voluptatem libero doloremque qui molestias quas, dolorum rem accusamus totam obcaecati deleniti soluta distinctio, culpa asperiores. Minus rerum libero enim, cumque est quas accusamus fugiat sapiente et id quasi voluptate, eum reprehenderit harum?</p>',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
