class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :youtube_id
      t.integer :position

      t.timestamps
    end
  end
end
