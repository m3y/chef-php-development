name "php-development"
description "php development"
run_list(
    "recipe[dotdeb]",
    "recipe[dotdeb::php]",
    "recipe[base]",
    "recipe[php]",
    "recipe[php::composer]",
    "role[database]",
    "role[webserver]",
    "recipe[apache2::mod_php5]",
    "recipe[php::mysqlnd]"
)
