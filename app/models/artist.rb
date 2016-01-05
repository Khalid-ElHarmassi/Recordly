class Artist < ActiveRecord::Base
  validates :artist_title, :presence => true, :uniqueness => true
end
