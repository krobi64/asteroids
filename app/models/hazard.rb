class Hazard < ActiveRecord::Base
  belongs_to :asteroid, inverse_of: :hazard
end
