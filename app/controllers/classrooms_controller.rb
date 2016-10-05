class ClassroomsController < ApplicationController

  def new
    if !logged_in?
      redirect_to root_path
    else
      @teacher = Teacher.find(session[:teacher_id])
      @other_teachers = @teacher.all_other_teacher_names
      @classroom = Classroom.new
    end
  end

  def create
    @classroom = Classroom.new(name: classroom_params[:name], schoolyear: classroom_params[:schoolyear])
    @classroom.teachers.push(Teacher.find(current_teacher.id))
    @classroom.teachers.push(Teacher.find_by_full_name(classroom_params[:teachers]))
    if @classroom.save
      redirect_to classroom_path(@classroom)
    else
      @errors = @classroom.errors.full_messages
      redirect_to new_classroom_path
    end

  end

  def show
    @classroom = Classroom.find(params[:id])
    @teacher_list = @classroom.list_teacher_names
    @first_ten_messages = @classroom.ten_messages(0)
  end

  def edit
    @classroom = Classroom.find(params[:id])
    if request.xhr?
      respond_to { |edit_form| edit_form.js }
    end
  end

  def update
    @classroom = Classroom.find(params[:id])
    @classroom.assign_attributes()
  end

   private
  def classroom_params
    params.require(:classroom).permit(:name, :schoolyear, :docdrive_url, :teachers)
  end

end
