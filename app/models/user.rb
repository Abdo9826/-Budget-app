# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, dependent: :delete_all, foreign_key: 'author_id'
  has_many :operations, dependent: :delete_all, foreign_key: 'author_id'

  validates :name, presence: true
  validates :password, presence: true
  validates :email, presence: true

  def groups
    Group.where(user_id: id).all
  end

  def operations
    Operation.where(user_id: id).all
  end
end
