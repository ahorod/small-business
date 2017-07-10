class Product < ApplicationRecord

 validates :name, :description, :price, :presence => true

 has_many :reviews, dependent: :destroy

end
