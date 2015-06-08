name "webserver"
description "web server"
run_list "recipe[apache]"
default_attributes({
 "apache" => {
  "sites" =>  {
   "admin" =>   {
    "port" => 8000
    }
   }
  }
 })

