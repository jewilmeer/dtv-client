class EpisodesController < SerieAreaController
  def show
    @episode = Episode.new( serie: @serie, title: params[:id] )

    @episodes = []
    12.times do |e|
      @episodes << Episode.new( serie: @serie, title: @demo[:episode_titles].sample )
    end
  end
end