class PicturesController < ApplicationController
  before_filter :load_pictures

  def index
    # load_pictures
    # {"controller"=>"pictures", "action"=>"index", "boogers"=>"3"}
  end
  
  def show
    # @picture = @pictures[0]
    # @picture = @pictures[params]
    # @picture = @pictures[{"controller"=>"pictures", "action"=>"show", "boogers"=>"3"}]
    # @picture = @pictures[{"controller"=>"pictures", "action"=>"show", "boogers"=>"3"}[:boogers]]
    @picture = @pictures[params[:boogers].to_i]
  end
  
  def load_pictures
    @pictures = [

      {
        :title => "Little boy RAAAOWR",
        :artist => "Kids Costumes, Inc.",
        :url => "http://images.halloweencostumes.com/toddler-tiger-costume.jpg"
      },

      {
        :title => "UnderwaterRAAAOWR",
        :artist => "Daring Photography, Inc.",
        :url => "http://images.nationalgeographic.com/wpf/media-live/photos/000/036/cache/diving-tiger_3629_990x742.jpg"
      },

      {
        :title => "Walking, swagRAAAOWR",
        :artist => "Jungle Photos, Inc.",
        :url => "http://www.hdwallpapers.in/walls/widescreen_tiger-wide.jpg"
      }
    ]
  end

end