class ContactsController < ApplicationController
  #before_action :check_captcha ,only: [:create]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if verify_recaptcha(model: @contact) || @contact.save
      ContactMailer.send_mail(@contact).deliver
      redirect_to thanks_contacts_path
    else
      render :new
    end
  end

  def thanks
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
  ##def check_captcha
  ##  unless verify_recaptcha(message: "reCAPTCHAのチェックをしてください")
  ##    @contact = Contact.new(contact_params)
  ##    render :new
  ##  end 
  ##end
end