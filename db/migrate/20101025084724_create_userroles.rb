class CreateUserroles < ActiveRecord::Migration
  def self.up
    create_table :userroles do |t|
      t.string :name
      t.boolean :create_role
      t.boolean :delete_role
      t.boolean :view_role
      t.boolean :edit_role

      t.timestamps
    end
  end

  def self.down
    drop_table :userroles
  end
end
