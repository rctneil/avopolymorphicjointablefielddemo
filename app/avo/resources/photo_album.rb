class Avo::Resources::PhotoAlbum < Avo::BaseResource
    self.model_class = ::PhotoAlbum

    def fields
        field :lft, as: :number, sortable: true, readonly: true
        field :title, as: :text, link_to_record: true, sortable: true, format_using: -> { truncate(record.title, length: 75) }
        field :parent, as: :belongs_to, searchable: true, name: "Parent Album", use_resource: "Collection"
    end
end
