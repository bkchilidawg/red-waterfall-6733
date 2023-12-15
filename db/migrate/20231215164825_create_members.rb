class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :photo
      t.string :allies
      t.string :enemies
      t.string :affiliations
      t.string :nation

      t.timestamps
    end
  end
end
