class AddActiveColumn < ActiveRecord::Migration

  def change
    add_column :active, :boolean, :default => 0
  end

end
