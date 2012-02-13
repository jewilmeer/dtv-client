class PagesController < ApplicationController
  def index
    redirect_to series_path( Serie.first )
  end

  def show
    render params[:id]
  end
end