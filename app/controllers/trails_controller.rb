class TrailsController < ApplicationController

  def index
    @trails = Trail.all
  end

  def show
    @trail = Trail.find_by_id(params[:id])
    if @trail.nil?
      render plain: 'Not Found', status: :not_found
    end
  end

end
