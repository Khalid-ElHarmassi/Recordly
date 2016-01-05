class Album < ActiveRecord::Base
  validates :album_title, :presence => true, :uniqueness => true
end
