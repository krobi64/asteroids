require Rails.root.join('lib/asteroid_math')

class Asteroid < ActiveRecord::Base
  has_one :hazard, foreign_key: :designation, primary_key: :designation
  attr_reader :albedo

  default_scope {select(%i[absolute_magnitude
                          albedo_neowise
                          aphelion_distance
                          designation
                          delta_v
                          earth_moid
                          id
                          km_neo
                          mean_daily_motion
                          n_or_d
                          diameter_neowise
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
    attributes.merge(torino: torino, estimated_size: size)
  end

  def albedo
    albedo_neowise.presence || 0.15
  end

  def size
    return nil unless diameter_neowise.present? || (absolute_magnitude.present? && albedo.present?)
    diameter_neowise || AsteroidMath.estimated_size(absolute_magnitude, albedo)
  end
end
