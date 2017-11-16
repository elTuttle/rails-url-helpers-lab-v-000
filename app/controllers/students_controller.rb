require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
    render "index"
  end

  def show
    binding.pry
    id = params[:id]
    @student = Student.find(id: id)
    render "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
