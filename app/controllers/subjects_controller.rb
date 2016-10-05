class SubjectsController < ApplicationController
  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      if request.xhr?
        render :js => "success, and xhr!"
      else
        render :js => "success, but not xhr"
      end
    else
      @errors = @subject.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def subject_params
    params.require(:subject).permit(:name)
  end
end
