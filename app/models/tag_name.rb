class TagName < ActiveRecord::Base
  validates :content, presence:true, length:{maximum:50}
  has_many :prototypes, through: :pro_tag
  has_many: :pro_tags, dependent: :destroy
end
