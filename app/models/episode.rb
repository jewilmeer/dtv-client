class Episode < ActiveRecord::Base
  attr_accessor :serie, :title

  def title= value
    @title = value.gsub(/-/, ' ').humanize
  end

  def full_episode_title
    "#{serie.name} - #{title}"
  end

  def to_param
    title.parameterize
  end
end