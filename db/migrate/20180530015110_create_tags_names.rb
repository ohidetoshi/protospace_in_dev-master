class CreateTagsNames < ActiveRecord::Migration
  def change
    create_table :tags_names do |t|

      t.timestamps null: false
    end
  end
end
