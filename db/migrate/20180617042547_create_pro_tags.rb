class CreateProTags < ActiveRecord::Migration
  def change
    create_table :pro_tags do |t|
      t.references :prototype, index: true
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
