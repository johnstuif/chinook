class Artist < ActiveRecord::Base
  has_many :albums, dependent: :destroy

  has_many :tracks, through: :albums
end
