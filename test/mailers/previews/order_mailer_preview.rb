  # Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  def order
      order = Order.new(name1: "aaa", name2: "bbb")

      OrderMailer.send_mail(order)
    end
end
