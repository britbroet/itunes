class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :artist
      t.string :preview_url
      t.decimal :cost

      t.timestamps
    end
  end
end
