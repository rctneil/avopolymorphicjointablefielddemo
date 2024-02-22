class Avo::Resources::Collection < Avo::BaseResource
    self.model_class = ::Collection

    def fields
        field :lft, as: :number, sortable: true, readonly: true
        field :title, as: :text, link_to_record: true, sortable: true, format_using: -> { truncate(record.title, length: 75) }
        field :parent, as: :belongs_to, searchable: true, name: "Parent Album"

        tabs do
            # tab "Photo Albums" do
            #     field :photo_albums, as: :has_many, use_resource: Avo::Resources::PhotoAlbum
            # end

            # tab "Collections" do
            #     field :collections, as: :has_many, use_resource: Avo::Resources::Collection
            # end
        end
    end
end
