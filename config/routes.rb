Rails.application.routes.draw do
get("/", {:controller => "users", :action => "list"})

get("/users", {:controller => "users", :action => "list"})
get("/users/:username", {:controller => "users", :action => "show"})
post("/users/update/:username", {:controller => "users", :action => "update"})
post("/users/add", {:controller => "users", :action => "add"})

get("/photos", {:controller => "photos", :action => "list"})
get("/photos/:photo_id", {:controller => "photos", :action => "show"})
post("/photos/update/:photo_id", {:controller => "photos", :action => "update"})
get("/delete_photo/:photo_id", {:controller => "photos", :action => "delete"})
post("/photos/add", {:controller => "photos", :action => "add"})
post("/photos/add_comment", {:controller => "photos", :action => "add_comment"})

end
