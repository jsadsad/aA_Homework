class Dog < ApplicationRecord
  validates :name, presence: true
  validate :check_name_length

  def check_name_length
    unless self.name.length >= 4
      errors[:name] << "is too short, must be longer than 4 or more characters."
    end
  end

  def toys
    Toys.where({ dog_id: self.id })
  end

  has_many(:toys, {
    primary_key: :id,
    foreign_key: :dog_id,
    class_name: :Toy
    })
end
