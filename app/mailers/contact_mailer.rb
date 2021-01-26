class ContactMailer < ApplicationMailer

  def new_contact_email
    @message = params[:message]
    mail(to: RECIVER_EMAIL, subject: t('mailer.new_messgae_subject'))
  end
end
