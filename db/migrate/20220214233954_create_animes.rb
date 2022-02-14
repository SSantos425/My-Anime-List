class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.string :name
      t.string :author
      t.string :category
      t.integer :year
      t.integer :rate

      t.timestamps
    end
  end
end
