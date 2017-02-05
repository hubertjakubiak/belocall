class Question < ActiveRecord::Base
  belongs_to :city
  has_many :answers
  validates :body, :city, presence: true
end
