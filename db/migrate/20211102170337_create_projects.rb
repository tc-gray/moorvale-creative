class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :bio
      t.string :content
      t.boolean :current

      t.timestamps
    end
  end
end
