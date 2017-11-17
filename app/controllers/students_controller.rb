require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find_by(id: params[:id])
    #binding.pry
    if @student != nil
      @student.active = !@student.active
    end
    #binding.pry
    render "activate"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
