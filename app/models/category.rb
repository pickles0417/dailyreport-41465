class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '特別養護老人ホーム' },
    { id: 2, name: 'サービス付き高齢者向け住宅' },
    { id: 3, name: '有料老人ホーム' },
    { id: 4, name: 'デイサービス' },
    { id: 5, name: 'グループホーム' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :customers
end
