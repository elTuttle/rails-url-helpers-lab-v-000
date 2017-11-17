class AddActiveColumn < ActiveRecord::Migration

  def change
    change_table :students do |t|
      t.boolean :active, :boolean, :null => false, :default => 0
  end

end
