class EpisodesController < SerieAreaController
  def show
    @episode = Episode.new( serie: @serie, title: params[:id] )
  end
end