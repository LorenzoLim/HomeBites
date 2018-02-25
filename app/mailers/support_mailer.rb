class SupportMailer < ApplicationMailer
  def contact_support(dest_email, dish)
    @dest_email = dest_email
    @message = dish
    my_email = "minorgoblin.3@gmail.com"
    mail(to: @dest_email, subject: "You ordered: #{@message}")
  end
end
