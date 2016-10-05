module SessionsHelper
  def current_teacher
    Teacher.find_by(id: session[:teacher_id])
  end

  def logged_in?
    session[:teacher_id] && current_teacher.present?
  end
end
