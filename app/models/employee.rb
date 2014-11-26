class Employee < ActiveRecord::Base
  has_many :customers, foreign_key: "support_rep_id" 

  has_many :subordinates, class_name: "Employee",
                          foreign_key: "reports_to"

  belongs_to :manager,  class_name: "Employee",
                        foreign_key: "reports_to"


  def full_name
      self.first_name + " " + self.last_name
  end

end
