class Asteroid < ActiveRecord::Base
  has_one :hazard, foreign_key: :designation

  default_scope {select(%i[absolute_magnitude
                          aphelion_distance
                          designation
                          delta_v
                          earth_moid
                          km_neo
                          mean_daily_motion
                          n_or_d
                          name
                          neo
                          number
                          perihelion_distance
                          period
                          pha])}

  delegate :torino, to: :hazard
end
