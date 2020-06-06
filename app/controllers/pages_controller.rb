class PagesController < ApplicationController
  def home
  end

  def send_mail
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ContactMailer.home_form(name, email, message).deliver_later
    redirect_to root_path, notice: 'Thanks! Your message was sent. I will get back to you as soon.'
  end
end
