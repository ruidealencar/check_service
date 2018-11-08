class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :address
      t.string :rvm_list
      t.string :gemset

      t.timestamps
    end
  end
end
