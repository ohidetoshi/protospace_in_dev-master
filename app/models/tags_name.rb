class TagsName < ActiveRecord::Base
  t.string :content
end

has_many :prototypes,through: :tag_map
