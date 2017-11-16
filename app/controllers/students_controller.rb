require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
    render "index"
  end

  def show
    render "show"
  end

  def activate
    render "activate"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
