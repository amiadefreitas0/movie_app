class Movie < ApplicationRecord
    has_many :roles
    has_many :actors, through: :roles
    accepts_nested_attributes_for :actors


    

end
