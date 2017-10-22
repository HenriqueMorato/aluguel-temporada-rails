class ChangeLocationColumnOnProperty < ActiveRecord::Migration[5.1]
  def change
    change_column :properties, :area, :integer
  end
end
