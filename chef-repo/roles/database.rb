name "database"
description "mysql database"
run_list(
    "recipe[mysql::server]",
    "recipe[mysql::client]"
)
default_attributes(
    "mysql" => {
        "server_debian_password" => "",
        "server_root_password" => "",
        "server_repl_password" => ""
    }
)
