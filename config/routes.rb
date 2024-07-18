Rails.application.routes.draw do
get("/", {:controller => "users", :action => "list"})
get("/users", {:controller => "users", :action => "list"})
get("/photos", {:controller => "photos", :action => "list"})
end
