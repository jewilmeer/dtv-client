class PagesController < ApplicationController
  def index
    redirect_to series_path( Serie.find_by_name 'mythbusters' )
  end

  def show
    render params[:id]
  end
end