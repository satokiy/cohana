class OrderMailer < ApplicationMailer

def send_mail(order)
@order = order
mail(
  from: "satoki.y.12.26@gmail.com",
  to: "satoki.1226.graffitti@gmail.com",
  subject: "mailerテスト-注文内容の送信-"
)
end
end
