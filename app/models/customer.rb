class Customer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :dailies, dependent: :destroy
  belongs_to :user

  belongs_to :category
  belongs_to :prefecture
  belongs_to :contract

  def self.search(search)
    if search != ''
      Customer.where('customer_name LIKE(?)', "%#{search}%")
    else
      Customer.all
    end
  end

  with_options presence: true do
    validates :customer_name
    validates :postcode, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'はハイフンを含めた半角文字列で入力してください (例：123-4567)' }
    validates :city
    validates :block
    validates :phone_number, format: { with: /\A[0-9]{10,11}+\z/, message: 'は10桁以上11桁以内の半角数値で入力してください' }
    validates :capacity, numericality: { only_integer: true }
    validates :user_id, {presence: true}
  end

  with_options numericality: { other_than: 0, message: "を選択してください" } do
    validates :category_id
    validates :prefecture_id
    validates :contract_id
  end
end
