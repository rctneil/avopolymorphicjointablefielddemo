class Album < ActiveRecord::Base
    acts_as_nested_set

    def is_collection?
        type == "Collection"
    end

    def is_photo_album?
        type == "PhotoAlbum"
    end
end
