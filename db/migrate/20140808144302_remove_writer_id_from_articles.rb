class RemoveWriterIdFromArticles < ActiveRecord::Migration
  def change
  	remove_column :articles, :writer_id
  end
end
