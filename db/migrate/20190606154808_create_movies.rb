class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :netflix_id
      t.string :title
      t.string :image
      t.string :synopsis
      t.string :rating
      t.string :released
      t.string :runtime

      t.timestamps
    end
  end
end
