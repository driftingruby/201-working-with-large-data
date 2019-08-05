# == Schema Information
#
# Table name: vehicle_trackers
#
#  id                   :bigint           not null, primary key
#  vehicle_id           :bigint           not null
#  latitude             :float
#  longitude            :float
#  speeding             :boolean          default(FALSE)
#  maintenance_required :boolean          default(FALSE)
#  recorded_on          :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class VehicleTrackerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
