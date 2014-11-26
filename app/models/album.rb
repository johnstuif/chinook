class Album < ActiveRecord::Base
  belongs_to :artist

  has_many :tracks

  validates :title, :artist_id, presence: true
end
