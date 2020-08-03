class VenuesController < ApplicationController
  def index
    @venues = Venue.all.order({ :created_at => :desc })

    render({ :template => "venues/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @venue = Venue.where({:id => the_id }).at(0)

    render({ :template => "venues/show.html.erb" })
  end
end
