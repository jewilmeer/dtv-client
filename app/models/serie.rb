class Serie < ActiveRecord::Base
  scope :search, lambda {|query|
    if ActiveRecord::Base.connection.class.to_s.downcase['postgre']
      where('name ILIKE ?', "#{query}%")
    else
      where('name LIKE ?', "#{query}%")
    end
  }

  def fanart
    ["http://images.jewilmeer.com/tvdb_images/4/original_1319820406.jpg?1319820406", "http://images.jewilmeer.com/tvdb_images/3448/original_1324909519.jpg?1324909519", "http://images.jewilmeer.com/tvdb_images/10799/original_1325891169.jpg?1325891169", "http://images.jewilmeer.com/tvdb_images/11593/original_1319857212.jpg?1319857212", "http://images.jewilmeer.com/tvdb_images/3699/original_1325892407.jpg?1325892407", "http://images.jewilmeer.com/tvdb_images/3676/original_1325892290.jpg?1325892290", "http://images.jewilmeer.com/tvdb_images/22058/original_1326063414.jpg?1326063414", "http://images.jewilmeer.com/tvdb_images/9840/original_1325884940.jpg?1325884940", "http://images.jewilmeer.com/tvdb_images/10/original_1319820438.jpg?1319820438", "http://images.jewilmeer.com/tvdb_images/10551/original_1320030011.jpg?1320030011", "http://images.jewilmeer.com/tvdb_images/10052/original_1320202848.jpg?1320202848", "http://images.jewilmeer.com/tvdb_images/5789/original_1325541565.jpg?1325541565", "http://images.jewilmeer.com/tvdb_images/1467/original_1311571048.jpg?1311571048", "http://images.jewilmeer.com/tvdb_images/8056/original_1325869966.jpg?1325869966", "http://images.jewilmeer.com/tvdb_images/11147/original_1320114613.jpg?1320114613", "http://images.jewilmeer.com/tvdb_images/10901/original_1320030042.jpg?1320030042", "http://images.jewilmeer.com/tvdb_images/4050/original_1306441397.jpg?1306441397", "http://images.jewilmeer.com/tvdb_images/10716/original_1325892984.jpg?1325892984", "http://images.jewilmeer.com/tvdb_images/9859/original_1320202844.jpg?1320202844", "http://images.jewilmeer.com/tvdb_images/1925/original_1307510615.jpg?1307510615", "http://images.jewilmeer.com/tvdb_images/6038/original_1314414016.jpg?1314414016", "http://images.jewilmeer.com/tvdb_images/10813/original_1320026406.jpg?1320026406", "http://images.jewilmeer.com/tvdb_images/2628/original_1325593274.jpg?1325593274", "http://images.jewilmeer.com/tvdb_images/7118/original_1320030019.jpg?1320030019", "http://images.jewilmeer.com/tvdb_images/1324/original_1311305469.jpg?1311305469", "http://images.jewilmeer.com/tvdb_images/3170/original_1325815273.jpg?1325815273", "http://images.jewilmeer.com/tvdb_images/11636/original_1325890274.jpg?1325890274", "http://images.jewilmeer.com/tvdb_images/6907/original_1322798406.jpg?1322798406", "http://images.jewilmeer.com/tvdb_images/12414/original_1325891389.jpg?1325891389", "http://images.jewilmeer.com/tvdb_images/2905/original_1325700346.jpg?1325700346", "http://images.jewilmeer.com/tvdb_images/6795/original_1325541734.jpg?1325541734", "http://images.jewilmeer.com/tvdb_images/3060/original_1325702114.jpg?1325702114", "http://images.jewilmeer.com/tvdb_images/3058/original_1325701197.jpg?1325701197", "http://images.jewilmeer.com/tvdb_images/22937/original_1328041350.jpg?1328041350", "http://images.jewilmeer.com/tvdb_images/8754/original_1320721257.jpg?1320721257", "http://images.jewilmeer.com/tvdb_images/11112/original_1320021014.jpg?1320021014", "http://images.jewilmeer.com/tvdb_images/9445/original_1320112823.jpg?1320112823", "http://images.jewilmeer.com/tvdb_images/1436/original_1325877807.jpg?1325877807", "http://images.jewilmeer.com/tvdb_images/3892/original_1302913070.jpg?1302913070", "http://images.jewilmeer.com/tvdb_images/476/original_1325711633.jpg?1325711633"].sample([*1..5].sample)  
  end

  def max_seasons
    [*1..10].sample
  end

  def max_episods
    [*8..25].sample
  end

  def to_param
    "#{id} #{name}".parameterize
  end
end