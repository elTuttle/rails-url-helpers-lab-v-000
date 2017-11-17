class Student < ActiveRecord::Base

  attr_accessor :active

  after_initialize :attr_set

  def to_s
    self.first_name + " " + self.last_name
  end

  def attr_set
    @active = false
  end

end
