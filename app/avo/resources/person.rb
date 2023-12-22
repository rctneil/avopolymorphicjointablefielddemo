class Avo::Resources::Person < Avo::BaseResource
  self.includes = []

  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :name, as: :text, link_to_record: true
    field :coasters, as: :has_many, through: :coaster_personables
  end
end
