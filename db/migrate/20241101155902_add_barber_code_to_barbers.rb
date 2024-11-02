class AddBarberCodeToBarbers < ActiveRecord::Migration[7.2]
  def change
    add_column :barbers, :barber_code, :string
  end
end
