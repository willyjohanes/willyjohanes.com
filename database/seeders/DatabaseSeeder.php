<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
       

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        User::create([
            'name' => 'Willy Johanes',
            'username' => 'willyjohanes',
            'email' => 'willyjohanes.gold@gmail.com',
            'password' => bcrypt('Em4$1KgA')
        ]);

        // User::create([
        //     'name' => 'Raymond Wilson',
        //     'email' => 'raymondwilson@gmail.com',
        //     'password' => bcrypt('Em4$2KgA')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Systematic Theology',
            'slug' => 'systematic-theology'
        ]); 

        Category::create([
            'name' => 'Biblical Theology',
            'slug' => 'biblical-theology'
        ]);

        Category::create([
            'name' => 'Historical Theology',
            'slug' => 'historical-theology'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Doktrin Alkitab',
        //     'slug' => 'doktrin-alkitab',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis adipisci est inventore aut, quaerat itaque placeat reprehenderit repudiandae. Obcaecati reiciendis ipsum accusamus velit ex quaerat minima nihil fugit vel, voluptate, deserunt officia sequi? Odio expedita quas ipsum nihil veniam. Repellendus unde neque eaque maiores harum temporibus vero maxime rerum.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae assumenda nesciunt obcaecati beatae esse iste eius ab, eaque omnis, eveniet corporis perferendis, maiores dolor at. Nisi ea iusto architecto expedita dolorum sequi ad perferendis repellendus praesentium. Perspiciatis, perferendis voluptatibus suscipit voluptatum nesciunt quibusdam necessitatibus repudiandae. Fuga eligendi totam corporis nobis, odio dolores, rerum magni dolor quisquam eos a quam. Itaque, repudiandae doloribus neque beatae architecto magni! Mollitia, ipsa expedita aperiam fugiat rem magnam numquam totam, sequi ut quisquam quae voluptas error nobis? Unde aliquid consectetur iusto perspiciatis sapiente id excepturi, possimus commodi. Architecto nobis iste perspiciatis quibusdam blanditiis rem deleniti placeat quia accusamus adipisci aut animi quo sapiente debitis doloremque a commodi obcaecati, officiis quaerat iure saepe. Saepe cupiditate possimus quam soluta labore quibusdam voluptate beatae, porro repellat cumque quo sit aspernatur nisi! Expedita dolore quia, natus qui nisi quod blanditiis quae architecto labore veniam exercitationem nihil minus dolorum. Sit nemo cupiditate totam soluta, aspernatur obcaecati ab, consectetur veniam necessitatibus nesciunt, doloribus aut? Minima accusamus similique odit alias iure ut nostrum repellendus magni, officiis doloribus autem soluta quos odio consequatur ullam eaque eligendi dolorum in necessitatibus ipsum animi optio ipsa corporis! Ad debitis pariatur labore doloribus corrupti dicta sunt reiciendis.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Doktrin Allah',
        //     'slug' => 'doktrin-allah',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis adipisci est inventore aut, quaerat itaque placeat reprehenderit repudiandae. Obcaecati reiciendis ipsum accusamus velit ex quaerat minima nihil fugit vel, voluptate, deserunt officia sequi? Odio expedita quas ipsum nihil veniam. Repellendus unde neque eaque maiores harum temporibus vero maxime rerum.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae assumenda nesciunt obcaecati beatae esse iste eius ab, eaque omnis, eveniet corporis perferendis, maiores dolor at. Nisi ea iusto architecto expedita dolorum sequi ad perferendis repellendus praesentium. Perspiciatis, perferendis voluptatibus suscipit voluptatum nesciunt quibusdam necessitatibus repudiandae. Fuga eligendi totam corporis nobis, odio dolores, rerum magni dolor quisquam eos a quam. Itaque, repudiandae doloribus neque beatae architecto magni! Mollitia, ipsa expedita aperiam fugiat rem magnam numquam totam, sequi ut quisquam quae voluptas error nobis? Unde aliquid consectetur iusto perspiciatis sapiente id excepturi, possimus commodi. Architecto nobis iste perspiciatis quibusdam blanditiis rem deleniti placeat quia accusamus adipisci aut animi quo sapiente debitis doloremque a commodi obcaecati, officiis quaerat iure saepe. Saepe cupiditate possimus quam soluta labore quibusdam voluptate beatae, porro repellat cumque quo sit aspernatur nisi! Expedita dolore quia, natus qui nisi quod blanditiis quae architecto labore veniam exercitationem nihil minus dolorum. Sit nemo cupiditate totam soluta, aspernatur obcaecati ab, consectetur veniam necessitatibus nesciunt, doloribus aut? Minima accusamus similique odit alias iure ut nostrum repellendus magni, officiis doloribus autem soluta quos odio consequatur ullam eaque eligendi dolorum in necessitatibus ipsum animi optio ipsa corporis! Ad debitis pariatur labore doloribus corrupti dicta sunt reiciendis.',
        //     'category_id' => 1,
        //     'user_id' => 2
        // ]);

        // Post::create([
        //     'title' => 'Bahasa Ibrani Dasar',
        //     'slug' => 'bahasa-ibrani-dasar',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis adipisci est inventore aut, quaerat itaque placeat reprehenderit repudiandae. Obcaecati reiciendis ipsum accusamus velit ex quaerat minima nihil fugit vel, voluptate, deserunt officia sequi? Odio expedita quas ipsum nihil veniam. Repellendus unde neque eaque maiores harum temporibus vero maxime rerum.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae assumenda nesciunt obcaecati beatae esse iste eius ab, eaque omnis, eveniet corporis perferendis, maiores dolor at. Nisi ea iusto architecto expedita dolorum sequi ad perferendis repellendus praesentium. Perspiciatis, perferendis voluptatibus suscipit voluptatum nesciunt quibusdam necessitatibus repudiandae. Fuga eligendi totam corporis nobis, odio dolores, rerum magni dolor quisquam eos a quam. Itaque, repudiandae doloribus neque beatae architecto magni! Mollitia, ipsa expedita aperiam fugiat rem magnam numquam totam, sequi ut quisquam quae voluptas error nobis? Unde aliquid consectetur iusto perspiciatis sapiente id excepturi, possimus commodi. Architecto nobis iste perspiciatis quibusdam blanditiis rem deleniti placeat quia accusamus adipisci aut animi quo sapiente debitis doloremque a commodi obcaecati, officiis quaerat iure saepe. Saepe cupiditate possimus quam soluta labore quibusdam voluptate beatae, porro repellat cumque quo sit aspernatur nisi! Expedita dolore quia, natus qui nisi quod blanditiis quae architecto labore veniam exercitationem nihil minus dolorum. Sit nemo cupiditate totam soluta, aspernatur obcaecati ab, consectetur veniam necessitatibus nesciunt, doloribus aut? Minima accusamus similique odit alias iure ut nostrum repellendus magni, officiis doloribus autem soluta quos odio consequatur ullam eaque eligendi dolorum in necessitatibus ipsum animi optio ipsa corporis! Ad debitis pariatur labore doloribus corrupti dicta sunt reiciendis.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Bahasa Ibrani Lanjutan',
        //     'slug' => 'bahasa-ibrani-lanjutan',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis adipisci est inventore aut, quaerat itaque placeat reprehenderit repudiandae. Obcaecati reiciendis ipsum accusamus velit ex quaerat minima nihil fugit vel, voluptate, deserunt officia sequi? Odio expedita quas ipsum nihil veniam. Repellendus unde neque eaque maiores harum temporibus vero maxime rerum.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae assumenda nesciunt obcaecati beatae esse iste eius ab, eaque omnis, eveniet corporis perferendis, maiores dolor at. Nisi ea iusto architecto expedita dolorum sequi ad perferendis repellendus praesentium. Perspiciatis, perferendis voluptatibus suscipit voluptatum nesciunt quibusdam necessitatibus repudiandae. Fuga eligendi totam corporis nobis, odio dolores, rerum magni dolor quisquam eos a quam. Itaque, repudiandae doloribus neque beatae architecto magni! Mollitia, ipsa expedita aperiam fugiat rem magnam numquam totam, sequi ut quisquam quae voluptas error nobis? Unde aliquid consectetur iusto perspiciatis sapiente id excepturi, possimus commodi. Architecto nobis iste perspiciatis quibusdam blanditiis rem deleniti placeat quia accusamus adipisci aut animi quo sapiente debitis doloremque a commodi obcaecati, officiis quaerat iure saepe. Saepe cupiditate possimus quam soluta labore quibusdam voluptate beatae, porro repellat cumque quo sit aspernatur nisi! Expedita dolore quia, natus qui nisi quod blanditiis quae architecto labore veniam exercitationem nihil minus dolorum. Sit nemo cupiditate totam soluta, aspernatur obcaecati ab, consectetur veniam necessitatibus nesciunt, doloribus aut? Minima accusamus similique odit alias iure ut nostrum repellendus magni, officiis doloribus autem soluta quos odio consequatur ullam eaque eligendi dolorum in necessitatibus ipsum animi optio ipsa corporis! Ad debitis pariatur labore doloribus corrupti dicta sunt reiciendis.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

    }
}
