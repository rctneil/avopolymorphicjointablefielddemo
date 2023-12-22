class Coaster < ApplicationRecord
    has_many :personables, as: :personable
    has_many :people, through: :personables
end
