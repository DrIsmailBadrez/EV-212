class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def sendmail
    # ContactMailer.with(contact: contact_params).new_contact_email.deliver_later
    redirect_to profile_path
  end

  def contact_params
    params.require(:contact).permit(:email, :name, :message)
  end
end
