class PhotoAlbum < Album
    # has_many :photos
    # belongs_to :primary_photo, class_name: "Photo", optional: true

    # scope :no_photos, -> { left_outer_joins(:photos).where(photos: { id: nil }) }

    def previous_album
       Album.photo_albums.order(position: :asc).where("position > ?", position).first
    end

    def next_album
        Album.photo_albums.order(position: :desc).where("position < ?", position).first
    end
end
