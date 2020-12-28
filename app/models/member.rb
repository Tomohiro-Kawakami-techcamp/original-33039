class Member < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, 
    {id: 1, name: '年間チケット会員'}, 
    {id: 2, name: 'レギュラー会員'},
    {id: 3, name: '非会員'}
]

include ActiveHash::Associations
  has_many :users
end
