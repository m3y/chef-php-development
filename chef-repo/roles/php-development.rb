name "php-development"
description "php development"
run_list(
    "recipe[dotdeb]",
    "recipe[dotdeb::php]",
    "recipe[base]",
    "recipe[base::tmux]",
    "recipe[php]",
    "recipe[php::composer]",
    "recipe[mysql::server]",
    "recipe[mysql::client]",
    "recipe[apache2]",
    "recipe[apache2::mod_rewrite]",
    "recipe[apache2::mod_deflate]",
    "recipe[apache2::mod_headers]",
    "recipe[apache2::mod_php5]",
    "recipe[php::mysqlnd]"
)
default_attributes(
    "apache" => {
        "listen_ports" => ["80", "443"],
        "docroot_dir" => "/var/www/"
    },
    "mysql" => {
        "server_debian_password" => "",
        "server_root_password" => "",
        "server_repl_password" => ""
    }
)
