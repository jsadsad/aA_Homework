class AddTimeToToys < ActiveRecord::Migration[5.2]
  def change
    add_column :toys, :created_at, :datetime
    add_column :toys, :updated_at, :datetime
  end
end
