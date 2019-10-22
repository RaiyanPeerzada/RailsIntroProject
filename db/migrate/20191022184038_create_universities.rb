class CreateUniversities < ActiveRecord::Migration[6.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :country
      t.string :webpage
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
