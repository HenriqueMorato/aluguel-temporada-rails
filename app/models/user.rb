class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: {
    message: 'Você deve informar o primeiro nome'
  }

  validates :last_name, presence: {
    message: 'Você deve informar o ultimo nome'
  }

  validates :cpf, presence: {
    message: 'Você deve informar o cpf'
  }
end
