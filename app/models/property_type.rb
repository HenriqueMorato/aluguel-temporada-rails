class PropertyType < ApplicationRecord
  has_many :properties
  validates :name, presence: {
    message: 'Você deve informar o nome do tipo do imóvel'
  }
end
