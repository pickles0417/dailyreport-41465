class Daily < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :customer
  belongs_to :user

  belongs_to :meal

  with_options presence: true do
    validates :meet_year, numericality: { only_integer: true, greater_than: 2024, less_than_or_equal_to: 2030 }
    validates :meet_month, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 12 }
    validates :meet_day, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 31 }
    validates :text
  end

  with_options numericality: { other_than: 0 } do
    validates :meal_id
  end
end
