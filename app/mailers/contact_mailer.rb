class ContactMailer < ApplicationMailer
  def new_contact_email
    @contact = params[:contact]

    mail(to: "ev212.contact@gmail.com", subject: "You got a new contact")
  end
end
