class Collection < Album
    has_many :photo_albums, through: :children, class_name: "PhotoAlbum"

    def has_photo_albums?
        children.where(collection: false).any?
    end

    def photo_albums
        children.where(collection: false)
    end
end
