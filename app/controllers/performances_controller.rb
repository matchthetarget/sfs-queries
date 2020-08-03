class PerformancesController < ApplicationController
  def index
    @enrollments = Performance.all.order({ :created_at => :desc })

    render({ :template => "enrollments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @enrollment = Performance.where({:id => the_id }).at(0)

    render({ :template => "enrollments/show.html.erb" })
  end

end
