# frozen_string_literal: true

class SearchController < ApplicationController
  def index; end

  def result
    @universities = University.where('name LIKE ?', "%#{params[:q]}%").order(:name).page params[:page]
    @uni_count = University.where('name LIKE ?', "%#{params[:q]}%")
  end

  def studentResult
    @students = Student.where('fname LIKE ? OR lname LIKE ?', "%#{params[:q]}%", "%#{params[:q]}%").order(:fname).page params[:page]
    @student_count = Student.where('fname LIKE ? OR lname LIKE ?', "%#{params[:q]}%", "%#{params[:q]}%")
  end
end
