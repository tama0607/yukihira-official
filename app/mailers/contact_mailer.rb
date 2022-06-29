class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail(
      from: ENV["FROM_GMAIL_ADDRESSE"], # 送信元メールアドレス
      to:   ENV["TO_GMAIL_ADDRESSE"],   # 送信先メールアドレス
      subject: 'お問い合わせメール' # 件名
    )
  end
  layout 'mailer'
end