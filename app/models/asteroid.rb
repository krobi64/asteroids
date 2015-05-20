require Rails.root.join('lib/asteroid_math')

class Asteroid
  include ActiveModel::Model

  class_attribute :list, :last_read

  delegate :torino, to: :hazard, allow_nil: true
  delegate :palermo_cum, to: :hazard, allow_nil: true
  delegate :palermo_max, to: :hazard, allow_nil: true

  class << self
    def import
      unless list.present? && last_read_current?
        self.list = referenced_repo
      end
    end

    def find(designation)
      list[designation]
    end
    delegate :[], to: :list

    def all
      list.values
    end

    private

    def last_read_current?
      last_read? && last_read > (DateTime.now - 1.day)
    end

    def referenced_repo
      loaded_repo.inject(Hashr.new) do |asteroid_hash, asteroid|
        asteroid_hash[asteroid['designation']] = asteroid
        asteroid_hash
      end
    end

    def loaded_repo
      repo = JSON.load repo_file
      self.last_read = DateTime.now
      repo
    rescue StandardError => e
      Rails.logger.error(e.message)
      Rails.logger.error(e.backtrace)
      list? ? list.values : raise('Asteroid List Unavailable')
    end

    def repo_file
      Rails.root.join('lib/asteroids.json')
    end

  end

  def size
    return nil unless diameter_neowise.present? || (absolute_magnitude.present? && albedo.present?)
    diameter_neowise || AsteroidMath.estimated_size(absolute_magnitude, albedo)
  end
end
