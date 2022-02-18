class CreateFollowAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :follow_animes do |t|
      t.references :anime, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
