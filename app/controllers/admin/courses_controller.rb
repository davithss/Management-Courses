class Admin::CoursesController < Admin::AdminController
  
  menu_item :courses
  
  def index
    @courses = Course.all
    respond_with @courses
  end
  def show
    @course = Course.find(params[:id])
     respond_with @course do |format|
        format.html { render :layout => "application" }
      end
  end  
  def new
    @course = Course.new
    respond_with @course
  end
  def edit
    @course = Course.find(params[:id])
  end
  def create
    @course = Course.new(params[:course])
    flash[:notice] = 'Course was successfully created.' if @course.save
    respond_with @course , :location => admin_courses_path
  end
  def update
    @course = Course.find(params[:id])
    flash[:notice] = 'Course was successfully updated.' if @course.update_attributes(params[:course])
    respond_with @course , :location => edit_admin_course_path(@course)
  end
  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    respond_with @course, :location => admin_courses_path
  end
end
