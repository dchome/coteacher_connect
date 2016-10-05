class SessionsController < ApplicationController
  def new
    if current_teacher
      redirect_to teacher_path(current_teacher)
    end
  end

  def create
    @teacher = Teacher.find_by(username: params[:username])
    if @teacher && @teacher.authenticate(params[:password])
      session[:teacher_id] = @teacher.id
      redirect_to teacher_path(@teacher)
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
