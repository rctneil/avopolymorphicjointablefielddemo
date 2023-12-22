class Personable < ApplicationRecord
  belongs_to :person
  belongs_to :personable, polymorphic: true
end
