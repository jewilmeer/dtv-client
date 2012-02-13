class PagesController < ApplicationController
  def index
    serie = Serie.where 'mythbusters'
    serie ||= Serie.first
    redirect_to series_path( serie )
  end

  def show
    render params[:id]
  end
end