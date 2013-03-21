class PicturesController < ApplicationController
  # before_filter :load_pictures

  def index
    # load_pictures
    # {"controller"=>"pictures", "action"=>"index", "boogers"=>"3"}
    @pictures = Picture.all


  end
  
  def show
    # @picture = @pictures[0]
    # @picture = @pictures[params]
    # @picture = @pictures[{"controller"=>"pictures", "action"=>"show", "boogers"=>"3"}]
    # @picture = @pictures[{"controller"=>"pictures", "action"=>"show", "boogers"=>"3"}[:boogers]]
    # @picture = @pictures[params[:id].to_i]
    @picture = Picture.find(params[:id])
  end
  
  def new
    @picture = Picture.new
  end

  def edit

    @picture = Picture.find(params[:id])
    # @picture.artist = params[:artist]
    # @picture.title = params[:title]
    # @picture.url = params[:url]
    # success = @picture.save
    # redirect_to '/pictures/update'
  end

  def update
    # render :text => "Updating a picture. Url: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
    @picture = Picture.find(params[:id])
    
    # Solution 1:
    # can do with our without curly brackets
    
    success = @picture.update_attributes(
      {:artist     => params[:artist],
      :title      => params[:title],
      :url        => params[:url]}
      )

    # Solution 2:

    # @picture.update_attribute(:artist, params[:artist])
    # @picture.update_attribute(:title, params[:title])
    # @picture.update_attribute(:url, params[:url])

    # Solution 3:
    # @picture.artist = params[:artist]
    # @picture.title = params[:title]
    # @picture.url = params[:url]
    # success = @picture.save
    if success
      redirect_to '/pictures' #pictures_path
    end
  end

  def create
    # render :text => "Saving a picture. Url: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  
    @picture = Picture.create(params[:picture])

    # @picture = Picture.new
    # @picture.artist = params[:artist]
    # @picture.title = params[:title]
    # @picture.url = params[:url]
   
      redirect_to '/pictures'
    end

  end

  # def load_pictures
  #   @pictures = [

  #     {
  #       :title => "Little boy RAAAOWR",
  #       :artist => "Kids Costumes, Inc.",
  #       :url => "http://images.halloweencostumes.com/toddler-tiger-costume.jpg"
  #     },

  #     {
  #       :title => "UnderwaterRAAAOWR",
  #       :artist => "Daring Photography, Inc.",
  #       :url => "http://images.nationalgeographic.com/wpf/media-live/photos/000/036/cache/diving-tiger_3629_990x742.jpg"
  #     },

  #     {
  #       :title => "Walking, swagRAAAOWR",
  #       :artist => "Jungle Photos, Inc.",
  #       :url => "http://www.hdwallpapers.in/walls/widescreen_tiger-wide.jpg"
  #     }
  #   ]
  # end

end