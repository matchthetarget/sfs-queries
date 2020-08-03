class CitiesController < ApplicationController
  def index
    @cities = City.all.order({ :created_at => :desc })

    render({ :template => "cities/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @city = City.where({:id => the_id }).at(0)

    render({ :template => "cities/show.html.erb" })
  end

end
