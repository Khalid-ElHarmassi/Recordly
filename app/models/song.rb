class Song < ActiveRecord::Base
  validates :spng_title, :presence => true, :uniqueness => true
end
