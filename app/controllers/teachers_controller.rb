class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    pry
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      session[:teacher_id] = @teacher.id
      redirect_to teacher_path(@teacher)
    else
      @errors = @teacher.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
    if logged_in?
      @teacher = Teacher.find_by(id: params[:id])
      if @teacher
        @classrooms = @teacher.classrooms
        render 'show'
      else
        @teacher = current_teacher
        render 'show'
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    @teacher = Teacher.find_by(id: params[:id])
    if logged_in? && current_teacher = @teacher
      @teacher.destroy
      redirect_to root_path
    else
      redirect_to teacher_path(@teacher)
    end
  end

  private
  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :username, :email, :password, :photo_path, :phone_number)
  end
end
