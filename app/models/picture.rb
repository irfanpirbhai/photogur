class Picture < ActiveRecord::Base

  # allow mass-assignment for the attributes title and artist
  attr_accessible :title, :artist, :url
  # don't confuse this with attr_accessor

  validates :title, :presence => true
  validates :url, :presence => true


  # include Magic!
  # an instance of Picture is one row in our "pictures" database
end