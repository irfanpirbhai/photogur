class Picture < ActiveRecord::Base

  # allow mass-assignment for the attributes title and artist
  attr_accessible :title, :artist, :url
  # don't confuse this with attr_accessor

  validates :title, :presence => true
  # which is the same as: validates(:title, {:presence => true})
  
  validates :url, {
        # :presence => true, 
        :format => {
          :with => /^https?:/, :message => "Please enter a valid URL"
        }   
    }

  # include Magic!
  # an instance of Picture is one row in our "pictures" database
end