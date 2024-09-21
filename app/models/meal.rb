class Meal < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' }, { id: 1, name: 'クックフリーズ' }, { id: 2, name: 'クックチル' },
    { id: 3, name: 'クックサーブ' }, { id: 4, name: '業務委託' }, { id: 5, name: 'お弁当' },
    { id: 6, name: '手作り' }, { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :dailies
end
