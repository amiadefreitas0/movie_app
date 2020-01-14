require 'pry'
class Role < ApplicationRecord
    belongs_to :actor
    belongs_to :movie
    accepts_nested_attributes_for :movie, :actor

    def movie_name
        self.movie.each do |movie|
            movie.title
        end
    end
    
    def actor_name
        self.actor.each do |actor|
            actor.name
        end
    end
end



