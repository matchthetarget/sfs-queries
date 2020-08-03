Rails.application.routes.draw do
  get("/", { :controller => "cities", :action => "index" })
  # Routes for the City resource:
          
  # READ
  get("/cities", { :controller => "cities", :action => "index" })
  
  get("/cities/:path_id", { :controller => "cities", :action => "show" })

  #------------------------------

  # Routes for the Venue resource:

  # READ
  get("/venues", { :controller => "venues", :action => "index" })
  
  get("/venues/:path_id", { :controller => "venues", :action => "show" })

  #------------------------------

  # Routes for the Enrollment resource:
          
  # READ
  get("/performances", { :controller => "performances", :action => "index" })
  
  get("/performances/:path_id", { :controller => "performances", :action => "show" })

  #------------------------------

  # Routes for the Student resource:

  # READ
  get("/artists", { :controller => "artists", :action => "index" })
  
  get("/artists/:path_id", { :controller => "artists", :action => "show" })

  #------------------------------

end
