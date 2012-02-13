class Episode < ActiveRecord::Base
  attr_accessor :serie, :title

  def title= value
    @title = value.gsub(/-/, ' ').humanize
  end

  def full_episode_title
    "#{serie.name} - Season #{season} - #{title}"
  end

  def season
    [*1..10].sample
  end

  def number
    [*1..25].sample
  end

  def numbering
    "S#{"%02d" % season}E#{number}"
  end

  def to_param
    title.parameterize
  end
end