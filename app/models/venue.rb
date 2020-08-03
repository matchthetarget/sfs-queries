# == Schema Information
#
# Table name: venues
#
#  id          :integer          not null, primary key
#  description :string
#  name        :string
#  size        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  city_id     :string
#
class Venue < ApplicationRecord
  
end
