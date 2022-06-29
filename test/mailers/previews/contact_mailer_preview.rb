# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact
    contact = Contact.new(name: "test", message: "aaa問い合わせメッセージaaa")

    ContactMailer.send_mail(contact)
  end
end
