class OrderController < ApplicationController
  def new
    @order = Order.new
    @order.name1= session[:name1]
    @order.name2= session[:name2]
    @order.tel1=session[:tel1]
    @order.tel2= session[:tel2]
    @order.tel3= session[:tel3]
    @order.email= session[:email]
    @order.zipcode= session[:zipcode]
    @order.pref= session[:pref]
    @order.addr1= session[:addr1]
    @order.addr2= session[:addr2]
    @order.delivery_date= session[:delivery_date]
    @order.pay_type= session[:pay_type]
    @order.image= session[:image]


  end


  def new2
  end

def picture

end
def file_upload
@order=Order.new
end

def take_picture
@order=Order.new
end
#
def upload
  binding.pry
@order = Order.new(image_name: params[:image_name])
  binding.pry
session[:image] = @order.image_name.url
# 一時的アップロード(@userインスタンスには一時ディレクトリのパスが入る)
render :new
#redirect_to("/order/new")
end

def upload2
  @order = Order.new(image_name: params[:order][:image_name])
#@order.image_name.urlにはアップロード画像の保存先のパスが入る
  session[:image] = @order.image_name.url
render :new
#redirect_to("/order/new")
end
def check

end


def preview
end

def create
  @order = Order.new(name1: params[:name1],
    name2: params[:name2],
    tel1: params[:tel1],
    tel2: params[:tel2],
    tel3: params[:tel3],
    email: params[:email],
    zipcode: params[:zipcode],
    pref: params[:pref],
    addr1: params[:addr1],
    addr2: params[:addr2],
    delivery_date: params[:delivery_date],
    pay_type: params[:pay_type]
  )
  session[:name1] =  params[:name1]
  session[:name2] =  params[:name2]
  session[:tel1] =  params[:tel1]
  session[:tel2] =  params[:tel2]
  session[:tel3] =  params[:tel3]
  session[:email] = params[:email]
  session[:zipcode] = params[:zipcode]
  session[:pref] = params[:pref]
  session[:addr1] = params[:addr1]
  session[:addr2] = params[:addr2]
  session[:delivery_date] = params[:delivery_date]
  session[:pay_type] = params[:pay_type]


#   if @order.invalid?
#     flash[:notice] = "必要項目を入力してください"
#     render("order/new")
#
#   elsif
#
    redirect_to("/order/confirm")
#
# end

end

def confirm
@order=Order.new(image_path: session[:image])

end


def order
end

def pay
  Payjp.api_key = 'sk_test_2bc851197c7bc9a05c0dff1d'
  charge = Payjp::Charge.create(
  :amount => 3500,
  :card => params['payjp-token'],
  :currency => 'jpy',
)
end
def complete

  @order=Order.new(
    name1: session[:name1],
    name2: session[:name2],
    tel1: session[:tel1],
    tel2: session[:tel2],
    tel3: session[:tel3],
    email: session[:email],
    zipcode: session[:zipcode],
    pref: session[:pref],
    addr1: session[:addr1],
    addr2: session[:addr2],
    delivery_date: session[:delivery_date],
    pay_type: session[:pay_type],
  )
  @order.image_path = session[:image]
  #@order.image_nameではsessionの値を受け取れないので別のカラム（image_path）を用意してそこに保存
  #image_nameカラムは現状carrierwaveを動かすための犠牲カラム
if @order.save

OrderMailer.send_mail(order).deliver_now
#Rails ActionMailerによってメールを送るコード
# if params[:back]
#   render :new
#elsif @order.save
session[:name1] =  nil
session[:name2] = nil
session[:tel1] =  nil
session[:tel2] =  nil
session[:tel3] =  nil
session[:email] = nil
session[:zipcode] = nil
session[:pref] = nil
session[:addr1] = nil
session[:addr2] = nil
session[:delivery_date] = nil
session[:pay_type] = nil
session[:image_path] = nil

flash[:notice]="ご注文ありがとうございました"
redirect_to("/")
end


end
end
