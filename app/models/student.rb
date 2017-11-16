class Student < ActiveRecord::Base

  attr_accessor_with_default :active,false

  def to_s
    self.first_name + " " + self.last_name
  end
end
