class AddActiveColumn < ActiveRecord::Migration

  def change
    add_column :active, :boolean, :default => false
  end

end
