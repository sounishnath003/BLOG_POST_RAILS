class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: { minimum: 10 }
    validates :body, presence: true
end
