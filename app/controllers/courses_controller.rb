class CoursesController < ApplicationController
  def index
  	@search_term = params[:looking_for] || 'amy'
  	@courses = Coursera.for(@search_term)
  end
end
