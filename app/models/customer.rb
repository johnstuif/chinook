class Customer < ActiveRecord::Base
  belongs_to :employee, foreign_key: "support_rep_id" 

  has_many :invoices
end
