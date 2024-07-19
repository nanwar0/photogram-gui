Rails.application.routes.draw do
get("/", {:controller => "users", :action => "list"})

get("/users", {:controller => "users", :action => "list"})
get("/users/:username", {:controller => "users", :action => "show"})

get("/photos", {:controller => "photos", :action => "list"})
get("/photos/:photo_id", {:controller => "photos", :action => "show"})

end
