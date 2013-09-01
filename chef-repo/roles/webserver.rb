name "webserver"
description "Systems that serve HTTP and HTTPS"
run_list(
    "recipe[apache2]",
    "recipe[apache2::mod_rewrite]",
    "recipe[apache2::mod_deflate]",
    "recipe[apache2::mod_headers]",
)
default_attributes(
    "apache" => {
        "listen_ports" => ["80", "443"],
        "docroot_dir" => "/var/www/"
    }
)
