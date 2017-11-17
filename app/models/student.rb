class Student < ActiveRecord::Base

  attr_writer :active

  def to_s
    self.first_name + " " + self.last_name
  end

  def active
    @active || false
  end

end
