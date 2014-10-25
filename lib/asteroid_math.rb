class AsteroidMath
  class << self
    def estimated_size(abs_mag, albedo)
      (1329/Math.sqrt(albedo))* 10 ** (-0.2 * abs_mag)
    end
  end
end
