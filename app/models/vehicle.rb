# == Schema Information
#
# Table name: vehicles
#
#  id         :bigint           not null, primary key
#  name       :string
#  vin        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vehicle < ApplicationRecord
  has_many :vehicle_trackers, dependent: :delete_all
end
