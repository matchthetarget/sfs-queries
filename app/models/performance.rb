# == Schema Information
#
# Table name: performances
#
#  id         :integer          not null, primary key
#  date       :datetime
#  duration   :integer
#  show_type  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#  venue_id   :integer
#
class Performance < ApplicationRecord
end
  
