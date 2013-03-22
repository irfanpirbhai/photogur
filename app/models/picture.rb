class Picture < ActiveRecord::Base

  # allow mass-assignment for the attributes title and artist
  attr_accessible :title, :artist, :url, :copyrighted
  # don't confuse this with attr_accessor

  validates :title, :presence => true
  # which is the same as: validates(:title, {:presence => true})
  
  validates :url, {
        :presence => true, # redundant because the regex doesn't match empty string
        :format => {
          :with => /^https?:/, :message => "Please enter a valid URL"
        }   
    }

  # include Magic!
  # an instance of Picture is one row in our "pictures" database

  scope :alphabetical, order("title ASC")
  scope :free, where(:copyrighted => false)
end