# == Schema Information
#
# Table name: flats
#
#  id              :integer          not null, primary key
#  name            :string
#  address         :string
#  description     :text
#  price_per_night :integer
#  number_of_guest :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :price_per_night, numericality: { only_integer: true }
  validates :number_of_guest, presence: true
  validates :number_of_guest, numericality: { only_integer: true }
end
