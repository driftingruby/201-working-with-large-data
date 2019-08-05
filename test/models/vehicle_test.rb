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

require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
