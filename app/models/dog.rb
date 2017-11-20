class Dog < ApplicationRecord
  belongs_to :breed
  belongs_to :vet, optional: true

  has_many :custodies
  has_many :owners, through: :custodies


  accepts_nested_attributes_for :custodies
  def last_name
    if custodies.empty?
      "none"
    else
      custodies.first.owner.last_name #outputs the first owner's last name
    end
  end
end

# == Schema Information
#
# Table name: dogs
#
#  id         :integer          not null, primary key
#  name       :string
#  breed_id   :integer
#  vet_id     :integer
#  weight     :integer
#  dob        :date
#  in_daycare :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dogs_on_breed_id  (breed_id)
#  index_dogs_on_vet_id    (vet_id)
#
