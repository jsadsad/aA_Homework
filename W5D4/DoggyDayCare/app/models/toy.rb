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
