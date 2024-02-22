class Avo::Resources::Album < Avo::BaseResource
    def fields
        field :lft, as: :number, sortable: true, name: "ALBUM RESOURCE"
        field :title, as: :text, link_to_record: true, sortable: true
        field :parent, as: :belongs_to, searchable: true, name: "Parent Album"
    end
end
