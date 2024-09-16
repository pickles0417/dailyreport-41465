class Contract < ApplicationRecord
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '新規' },
    { id: 2, name: '既存' },
  ]

  include ActiveHash::Associations
  has_many :customers
end
