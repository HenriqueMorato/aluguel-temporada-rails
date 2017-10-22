class PropertyType < ApplicationRecord
  validates :name, presence: {
    message: 'Você deve informar o nome do tipo do imóvel'
  }
end
