class Customer < ActiveRecord::Base
  belongs_to :support_rep, class_name: "Employee",
                           foreign_key: "support_rep_id" 

  has_many :invoices


  def full_name
      self.first_name + " " + self.last_name
  end
end
