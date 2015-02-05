class SessionsController < ApplicationController

  def new
  end

  def login
  end

  def index
  end

  def create
    teacher = Teacher.find_by_email(params[:email])
    if teacher
      session[:id] = teacher.id
      redirect_to parents_path
    else
      redirect_to parents_path
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path, notice: "Logout to leave this page"
  end


end
