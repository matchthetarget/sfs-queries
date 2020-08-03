class ArtistsController < ApplicationController
  def index
    @artists = Artist.all.order({ :created_at => :desc })

    render({ :template => "artists/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @artist = Artist.where({:id => the_id }).at(0)

    render({ :template => "artists/show.html.erb" })
  end

end
