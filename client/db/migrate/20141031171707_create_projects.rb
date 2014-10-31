class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :client
      t.text :abstract

      t.timestamps
    end
  end
end
