class Asteroid < ActiveRecord::Base
  has_one :hazard, foreign_key: :designation, primary_key: :designation

  default_scope {select(%i[absolute_magnitude
                          aphelion_distance
                          designation
                          delta_v
                          earth_moid
                          id
                          km_neo
                          mean_daily_motion
                          n_or_d
                          name
                          neo
                          number
                          perihelion_distance
                          period
                          pha])}

  delegate :torino, to: :hazard, allow_nil: true
  delegate :palermo_cum, to: :hazard, allow_nil: true
  delegate :palermo_max, to: :hazard, allow_nil: true

  def asteroid_packet
    attributes.merge(palermo_cum: palermo_cum, palermo_max: palermo_max, torino: torino)
  end
end
