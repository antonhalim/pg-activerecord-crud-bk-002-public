class CreateMovies < ActiveRecord::Migration

  def change
    create_table :movies do |t|
      t.string :title, :director, :lead
      t.integer :release_date
      t.boolean :in_theaters
      t.timestamps
    end
  end
end
