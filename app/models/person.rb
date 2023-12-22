class Person < ApplicationRecord
    has_many :personables
    has_many :coaster_personables, -> { where(personable_type: 'Coaster') }, class_name: 'Personable'
    has_many :coasters, through: :coaster_personables, source: :personable, source_type: "Coaster"

    def roles
        # Get roles
    end
end
