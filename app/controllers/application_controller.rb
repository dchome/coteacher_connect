class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session,
      if: Proc.new { |c| c.request.format =~ %r{application/json} }

  def current_teacher
    Teacher.find_by(id: session[:teacher_id])
  end

  def logged_in?
    session[:teacher_id] && current_teacher.present?
  end
end
