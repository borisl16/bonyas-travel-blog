class RemoveContentFromElements < ActiveRecord::Migration[6.1]
  # def change
  #   remove_column :elements, :content
  # end

  def up
    remove_column :elements, :content
  end
  
  def down
    add_column :elements, :content, :boolean
  end
end
