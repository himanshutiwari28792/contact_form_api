# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def new_contact_email
    # Set up a temporary message for the preview
    message = Message.new(first_name: 'himanshu', last_name:'tiwari', email: "himanshu@gmail.com", phone: "09077778888", body: "I want to place an order!")

    ContactMailer.with(message: message).new_contact_email
  end
end
