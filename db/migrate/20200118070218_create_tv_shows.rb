class CreateTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
      t.references :channel, null: false, foreign_key: true
      t.string :name
      t.string :show_time

      t.timestamps
    end
  end
end
