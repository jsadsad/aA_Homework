# == Schema Information
#
# Table name: toys
#
#  id         :bigint           not null, primary key
#  color      :string           not null
#  name       :string           not null
#  created_at :datetime
#  updated_at :datetime
#  dog_id     :integer          not null
#
class Toy < ApplicationRecord
  def dog
    Dog.find(dog_id)
  end

  belongs_to(:dog, {
    primary_key: :id,
    foreign_key: :dog_id,
    class_name: :Dog
    })
end
