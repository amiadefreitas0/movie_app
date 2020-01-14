class Actor < ApplicationRecord
    has_many :roles
    has_many :movies, through: :roles
    accepts_nested_attributes_for :movies
end
