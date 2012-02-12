class SerieAreaController < ApplicationController
  before_filter :get_serie

  private
  def get_serie
    @serie = Serie.find(params[:series_id])
  end
end