class AddActiveColumn < ActiveRecord::Migration

  def change
    add_column :active, :boolean, :null => false, :default => 0
  end

end
