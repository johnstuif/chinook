class Invoice < ActiveRecord::Base
  has_many :invoice_lines

  belongs_to :customer

  has_many :tracks, through: :invoice_lines
end
