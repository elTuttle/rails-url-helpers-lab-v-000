class Student < ActiveRecord::Base

  attr_writer :active

  after_initialize :set_attr

  def to_s
    self.first_name + " " + self.last_name
  end

  def set_attr
    @active = false
  end

end
