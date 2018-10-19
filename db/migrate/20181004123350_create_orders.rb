class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name1
      t.string :string
      t.string :name2
      t.string :string
      t.string :tel1
      t.string :string
      t.string :tel2
      t.string :string
      t.string :tel3
      t.string :string
      t.string :image
      t.string :text
      t.string :email
      t.string :string
      t.string :zipcode
      t.string :pref
      t.string :string
      t.text :addr1
      t.text :addr2
      t.string :delivery_date
      t.string :date
      t.string :pay_type
      t.text :pay_code

      t.timestamps null: false
    end
  end
end
