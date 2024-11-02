class AddDetailsToBarbers < ActiveRecord::Migration[7.2]
  def change
    add_column :barbers, :name, :string
    add_column :barbers, :address, :string
  end
end
