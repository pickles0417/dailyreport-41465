class Customer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :category
  belongs_to :prefecture
  belongs_to :contract

  def self.search(search)
    if search != ""
      Customer.where('customer_name LIKE(?)', "%#{search}%")
    else
      Customer.all
    end
  end

  with_options presence: true do

    validates :customer_name
    validates :postcode, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
    validates :city
    validates :block
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }
    validates :capacity, numericality: { only_integer: true }
  end

  with_options numericality: { other_than: 0 , message: "can't be blank"} do
    validates :category_id
    validates :prefecture_id
    validates :contract_id
  end
end
