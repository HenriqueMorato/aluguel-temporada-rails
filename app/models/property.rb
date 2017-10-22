class Property < ApplicationRecord
  belongs_to :property_type

  validates :title, presence: {
    message: 'Você deve informar o Título'
  }
  validates :location, presence: {
    message: 'Você deve informar a Localização'
  }
  validates :daily_rate, presence: {
    message: 'Você deve informar o Quantidade de Quartos'
  }
  validates :rooms, presence: {
    message: 'Você deve informar o Preço da Diária'
  }
end
