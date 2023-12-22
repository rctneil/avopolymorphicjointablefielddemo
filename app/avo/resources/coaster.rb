class Avo::Resources::Coaster < Avo::BaseResource
  self.includes = []


  def fields
    field :name, as: :text, link_to_record: true
    field :people, as: :has_many, through: :coaster_personables, attach_scope: -> { query.order(name: :asc) }
  end
end
