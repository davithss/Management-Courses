class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.xml
  def index
    @courses = Course.all
    respond_with @courses
  end

  # GET /courses/1
  # GET /courses/1.xml
  def show
    @course = Course.find(params[:id])
    respond_with @course
  end

  # GET /courses/new
  # GET /courses/new.xml
  def new
    @course = Course.new
    respond_with @course
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.xml
  def create
    @course = Course.new(params[:course])
    flash[:notice] = 'Course was successfully created.' if @course.save
    respond_with @course 
  end

  # PUT /courses/1
  # PUT /courses/1.xml
  def update
    @course = Course.find(params[:id])
    flash[:notice] = 'Course was successfully updated.' if @course.update_attributes(params[:course])
    respond_with @course , :location => edit_course_path(@course)
  end

  # DELETE /courses/1
  # DELETE /courses/1.xml
  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    respond_with @course
  end
end
