<?php

namespace App\Models;

class Post_ 
{
    private static $blog_posts = [
        [
            "title" => "judul post pertama",
            "slug" => "judul-post-pertama",
            "author" => "ainur riziq",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat nobis dicta sint deserunt dignissimos commodi voluptatibus! A nemo itaque ipsum animi minima dicta, rerum illo similique quia at, magni illum?,
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat nobis dicta sint deserunt dignissimos commodi voluptatibus! A nemo itaque ipsum animi minima dicta, rerum illo similique quia at, magni illum?"
        ],
        [
            "title" => "judul post kedua.",
            "slug" => "judul-post-kedua",
            "author" => "alhamdani riziq",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio aut totam in? Asperiores, reiciendis maiores optio quis modi pariatur! Dolor quo, voluptatibus, officia cumque exercitationem eligendi porro doloremque ullam ut repellat quam animi autem vero? Quam eaque quae obcaecati consectetur fugiat! Odit perferendis eaque veritatis quidem dolore amet fuga, quae ea dolores libero. Libero similique maxime facere deserunt, quisquam voluptas culpa magni officia odit veritatis fuga delectus illum vel eius, maiores cum! Modi harum impedit dignissimos dolor cupiditate numquam eius nobis provident, dolorem delectus obcaecati nisi distinctio, autem veritatis minima enim, odit vel repellendus sapiente. Error vitae rem quos numquam?"
        ]
    ];

    public static function all(){
        return collect(self::$blog_posts);
    }

    public static function find($slug){
        $posts = static::all();
        
        // $post = [];
        // foreach($posts as $p){ 
        //     if($p["slug"] === $slug){
        //         $post = $p;
        //     }
        // }

        return $posts->firstWhere('slug',$slug); //menggunakan method dari collection
    }
}
