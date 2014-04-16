class SessionsController < ApplicationController
  def sign_in
    people = People.where(email: params[:email]).first
    if people && people.authenticate(params[:password])
      session[:people_id] = people.id
      redirect_to projects_path, notice: "Hey, Welcome Back Gain. Let's Get Started With Work."
  end

  def sign_out
  end
end
