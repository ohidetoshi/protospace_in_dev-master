class DropTable < ActiveRecord::Migration
  def change
    drop_table :pro_tags
  end
end
