# frozen_string_literal: true

class UniversitiesController < ApplicationController
  def index
    @universities = University.order(:name).page params[:page]
  end

  def show
    @university = University.find(params[:id])
  end
end
