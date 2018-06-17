class ProTag < ActiveRecord::Base
  belongs_to :prototype
  belongs_to :tag_name
  validates :prototype_id, presence: true
  validates :tag_name_id presence: true
end
