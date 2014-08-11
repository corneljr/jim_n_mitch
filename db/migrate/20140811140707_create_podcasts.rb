class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :podcast
      t.string :title

      t.timestamps
    end
  end
end
