class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :captured_images, dependent: :destroy
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :tag_names, through: :pro_tag
  has_many :pro_tags, dependent: :destroy

  accepts_nested_attributes_for :captured_images, reject_if: :reject_sub_images, allow_destroy: true

  validates :title,
            :catch_copy,
            :concept,
            presence: true

  def reject_sub_images(attributed)
    attributed['content'].blank?
  end

  def set_main_thumbnail
    captured_images.main.first.content
  end

  def posted_date
    created_at.strftime('%b %d %a')
  end

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

  def save_tag_names(tags)
    current_tags = self.tag_names.plunk(:name) unless self.tag_names.nill?
    old_tags = current_tags - tags
    new_tags = tags - current_tags
    #Destroy old taggings:
    old_tags.each do |old_name|
     self.tag_names.delete Tag_names.find_by(name:old_name)
   end
   #Create new taggings:
    new_tags.each do |new_name|
    prototype_tag_name = Tag_name.find_or_create_by(name:new_name)
    self.tag_names << prototype_tag_name
    end
  end
end
