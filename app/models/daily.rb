class Daily < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :customer
  belongs_to :user

  belongs_to :meal

  with_options presence: true do
    validates :meet_year
    validates :meet_month
    validates :meet_day
    validates :text
  end

  with_options numericality: { other_than: 0 } do
    validates :meal_id
  end

end
