class CreateFamilyRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :family_roles do |t|
      t.string :name, limit: 40

      t.timestamps
    end
  end
end
