class AddAttachmentImageToPosts < ActiveRecord::Migration
  def self.up
   add_column :project, :image_file_name, :string
   add_column :project, :image_content_type, :string
   add_column :project, :image_file_size, :string
   add_column :project, :image_updated_at, :datetime
    end

  def self.down
    remove_column :project, :image_file_name
    remove_column :project, :image_content_type
    remove_column :project, :image_file_size 
    remove_column :project, :image_updated_at 
  end

end
