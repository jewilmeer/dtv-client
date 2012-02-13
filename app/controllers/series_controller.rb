class SeriesController < ApplicationController
  respond_to :json
  def index
    respond_with @demo[:series]
  end

  def show
    @serie = Serie.find params[:id]
  end

  def search
    @series = Serie.search(params[:query]).all

    redirect_to @series.first if @series.length == 1
  end
end