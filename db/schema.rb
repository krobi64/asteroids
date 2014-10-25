# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141024000528) do

  create_table "asteroids", force: true do |t|
    t.string   "object_type"
    t.string   "n_or_d"
    t.integer  "number"
    t.string   "name"
    t.binary   "packed_designation",                     limit: 16
    t.string   "designation"
    t.string   "epoch"
    t.decimal  "epoch_jd",                                           precision: 8,  scale: 1
    t.string   "perihelion_date"
    t.decimal  "perihelion_date_jd",                                 precision: 14, scale: 7
    t.decimal  "argument_of_perihelion",                             precision: 10, scale: 7
    t.decimal  "ascending_node",                                     precision: 10, scale: 7
    t.decimal  "inclination",                                        precision: 10, scale: 7
    t.decimal  "eccentricity",                                       precision: 10, scale: 9
    t.decimal  "perihelion_distance",                                precision: 13, scale: 9
    t.integer  "origin"
    t.decimal  "p_vector_x",                                         precision: 9,  scale: 8
    t.decimal  "p_vector_y",                                         precision: 9,  scale: 8
    t.decimal  "p_vector_z",                                         precision: 9,  scale: 8
    t.decimal  "q_vector_x",                                         precision: 9,  scale: 8
    t.decimal  "q_vector_y",                                         precision: 9,  scale: 8
    t.decimal  "q_vector_z",                                         precision: 9,  scale: 8
    t.decimal  "absolute_magnitude",                                 precision: 4,  scale: 2
    t.decimal  "phase_slope",                                        precision: 4,  scale: 2
    t.integer  "observations"
    t.integer  "oppositions"
    t.integer  "arc_length"
    t.string   "orbit_uncertainty",                      limit: 4
    t.string   "perturbers_coarse_indicator"
    t.string   "perturbers_precise_indicator"
    t.decimal  "semimajor_axis",                                     precision: 11, scale: 7
    t.decimal  "period",                                             precision: 7,  scale: 2
    t.decimal  "aphelion_distance",                                  precision: 13, scale: 9
    t.decimal  "mean_daily_motion",                                  precision: 10, scale: 7
    t.decimal  "mean_anomaly",                                       precision: 8,  scale: 5
    t.string   "first_observation_date_used"
    t.string   "first_opposition_used"
    t.string   "last_observation_date_used"
    t.string   "last_opposition_used"
    t.decimal  "residual_rms",                                       precision: 12, scale: 8
    t.integer  "orbit_type"
    t.boolean  "critical_list_numbered_object"
    t.boolean  "neo"
    t.boolean  "km_neo"
    t.boolean  "pha"
    t.boolean  "nearly_numberable"
    t.boolean  "one_opposition_object_seen_prior"
    t.string   "reference"
    t.string   "computer_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "apparition_start_date"
    t.float    "apparition_start_magn",                  limit: 24
    t.float    "greatest_elong",                         limit: 24
    t.string   "greatest_elong_date"
    t.float    "greatest_elong_magn",                    limit: 24
    t.float    "greatest_elong_decl",                    limit: 24
    t.string   "apparition_end_date"
    t.float    "apparition_end_magn",                    limit: 24
    t.string   "one_line_format",                        limit: 512
    t.float    "delta_v",                                limit: 24
    t.float    "tisserand_jupiter",                      limit: 24
    t.float    "mercury_moid",                           limit: 24
    t.float    "venus_moid",                             limit: 24
    t.float    "earth_moid",                             limit: 24
    t.float    "mars_moid",                              limit: 24
    t.float    "jupiter_moid",                           limit: 24
    t.float    "saturn_moid",                            limit: 24
    t.float    "uranus_moid",                            limit: 24
    t.float    "neptune_moid",                           limit: 24
    t.decimal  "moid_orbit_epoch",                                   precision: 8,  scale: 1
    t.string   "moid_reference",                         limit: 32
    t.float    "h_neowise",                              limit: 24
    t.float    "g_neowise",                              limit: 24
    t.float    "albedo_neowise",                         limit: 24
    t.float    "albedo_neowise_unc",                     limit: 24
    t.float    "diameter_neowise",                       limit: 24
    t.float    "diameter_neowise_unc",                   limit: 24
    t.string   "taxonomy_class",                         limit: 1
    t.string   "taxonomy_class_source",                  limit: 1
    t.string   "color_ignore",                           limit: 3
    t.float    "u_minus_b",                              limit: 24
    t.string   "u_minus_b_source",                       limit: 1
    t.float    "b_minus_v",                              limit: 24
    t.string   "b_minus_v_source",                       limit: 1
    t.float    "v_minus_rc",                             limit: 24
    t.string   "v_minus_rc_source",                      limit: 1
    t.float    "rc_minus_ic",                            limit: 24
    t.string   "rc_minus_ic_source",                     limit: 1
    t.float    "panstarrs_v_minus_uprime",               limit: 24
    t.float    "panstarrs_v_minus_gprime",               limit: 24
    t.string   "panstarrs_v_minus_gprime_source",        limit: 1
    t.float    "panstarrs_v_minus_rprime",               limit: 24
    t.string   "panstarrs_v_minus_rprime_source",        limit: 1
    t.float    "panstarrs_v_minus_iprime",               limit: 24
    t.string   "panstarrs_v_minus_iprime_source",        limit: 1
    t.float    "panstarrs_v_minus_zprime",               limit: 24
    t.string   "panstarrs_v_minus_zprime_source",        limit: 1
    t.float    "panstarrs_v_minus_wprime",               limit: 24
    t.string   "panstarrs_v_minus_wprime_source",        limit: 1
    t.float    "panstarrs_v_minus_yprime",               limit: 24
    t.string   "panstarrs_v_minus_yprime_source",        limit: 1
    t.float    "v_minus_uprime",                         limit: 24
    t.float    "v_minus_gprime",                         limit: 24
    t.string   "v_minus_gprime_source",                  limit: 1
    t.float    "v_minus_rprime",                         limit: 24
    t.string   "v_minus_rprime_source",                  limit: 1
    t.float    "v_minus_iprime",                         limit: 24
    t.string   "v_minus_iprime_source",                  limit: 1
    t.float    "v_minus_zprime",                         limit: 24
    t.string   "v_minus_zprime_source",                  limit: 1
    t.float    "v_minus_wprime",                         limit: 24
    t.float    "v_minus_yprime",                         limit: 24
    t.string   "spin_period_flag",                       limit: 1
    t.string   "spin_period_description"
    t.float    "spin_period",                            limit: 24
    t.string   "spin_amplitude_flag",                    limit: 1
    t.float    "spin_min_amplitude",                     limit: 24
    t.float    "spin_max_amplitude",                     limit: 24
    t.string   "lightcurve_quality",                     limit: 2
    t.string   "lightcurve_notes",                       limit: 5
    t.string   "binary_object",                          limit: 1
    t.string   "computed_jd"
    t.string   "perihelion_date_jd_uncertainty"
    t.string   "argument_of_perihelion_uncertainty"
    t.string   "ascending_node_uncertainty"
    t.string   "inclination_uncertainty"
    t.string   "eccentricity_uncertainty"
    t.string   "perihelion_distance_uncertainty"
    t.float    "perihelion_date_jd_uncertainty_dbl",     limit: 24
    t.float    "argument_of_perihelion_uncertainty_dbl", limit: 24
    t.float    "ascending_node_uncertainty_dbl",         limit: 24
    t.float    "inclination_uncertainty_dbl",            limit: 24
    t.float    "eccentricity_uncertainty_dbl",           limit: 24
    t.float    "perihelion_distance_uncertainty_dbl",    limit: 24
    t.float    "h_neowise_2",                            limit: 24
    t.float    "g_neowise_2",                            limit: 24
    t.float    "albedo_neowise_2",                       limit: 24
    t.float    "albedo_neowise_unc_2",                   limit: 24
    t.float    "diameter_neowise_2",                     limit: 24
    t.float    "diameter_neowise_unc_2",                 limit: 24
    t.float    "h_neowise_3",                            limit: 24
    t.float    "g_neowise_3",                            limit: 24
    t.float    "albedo_neowise_3",                       limit: 24
    t.float    "albedo_neowise_unc_3",                   limit: 24
    t.float    "diameter_neowise_3",                     limit: 24
    t.float    "diameter_neowise_unc_3",                 limit: 24
    t.float    "h_neowise_4",                            limit: 24
    t.float    "g_neowise_4",                            limit: 24
    t.float    "albedo_neowise_4",                       limit: 24
    t.float    "albedo_neowise_unc_4",                   limit: 24
    t.float    "diameter_neowise_4",                     limit: 24
    t.float    "diameter_neowise_unc_4",                 limit: 24
    t.datetime "orbit_updated_at"
    t.datetime "spin_updated_at"
    t.datetime "albedo_updated_at"
    t.datetime "color_updated_at"
  end

  add_index "asteroids", ["absolute_magnitude"], name: "index_asteroids_on_absolute_magnitude", using: :btree
  add_index "asteroids", ["albedo_neowise"], name: "index_asteroids_on_albedo_neowise", using: :btree
  add_index "asteroids", ["aphelion_distance"], name: "index_asteroids_on_aphelion_distance", using: :btree
  add_index "asteroids", ["argument_of_perihelion"], name: "index_asteroids_on_argument_of_perihelion", using: :btree
  add_index "asteroids", ["ascending_node"], name: "index_asteroids_on_ascending_node", using: :btree
  add_index "asteroids", ["ascending_node_uncertainty_dbl"], name: "index_asteroids_on_ascending_node_uncertainty_dbl", using: :btree
  add_index "asteroids", ["binary_object"], name: "index_asteroids_on_binary_object", using: :btree
  add_index "asteroids", ["delta_v"], name: "delta_v", using: :btree
  add_index "asteroids", ["designation"], name: "index_asteroids_on_designation", using: :btree
  add_index "asteroids", ["diameter_neowise"], name: "index_asteroids_on_diameter_neowise", using: :btree
  add_index "asteroids", ["earth_moid"], name: "earth_moid", using: :btree
  add_index "asteroids", ["eccentricity"], name: "index_asteroids_on_eccentricity", using: :btree
  add_index "asteroids", ["eccentricity_uncertainty_dbl"], name: "index_asteroids_on_eccentricity_uncertainty_dbl", using: :btree
  add_index "asteroids", ["inclination"], name: "index_asteroids_on_inclination", using: :btree
  add_index "asteroids", ["inclination_uncertainty_dbl"], name: "index_asteroids_on_inclination_uncertainty_dbl", using: :btree
  add_index "asteroids", ["jupiter_moid"], name: "jupiter_moid", using: :btree
  add_index "asteroids", ["mars_moid"], name: "mars_moid", using: :btree
  add_index "asteroids", ["mean_anomaly"], name: "index_asteroids_on_mean_anomaly", using: :btree
  add_index "asteroids", ["mean_daily_motion"], name: "index_asteroids_on_mean_daily_motion", using: :btree
  add_index "asteroids", ["mercury_moid"], name: "mercury_moid", using: :btree
  add_index "asteroids", ["n_or_d"], name: "index_asteroids_on_n_or_d", using: :btree
  add_index "asteroids", ["neptune_moid"], name: "neptune_moid", using: :btree
  add_index "asteroids", ["number", "designation"], name: "index_asteroids_on_number_and_designation", unique: true, using: :btree
  add_index "asteroids", ["number"], name: "index_asteroids_on_number", using: :btree
  add_index "asteroids", ["orbit_type"], name: "index_asteroids_on_orbit_type", using: :btree
  add_index "asteroids", ["packed_designation"], name: "index_asteroids_on_packed_designation", using: :btree
  add_index "asteroids", ["perihelion_date_jd_uncertainty_dbl"], name: "index_asteroids_on_perihelion_date_jd_uncertainty_dbl", using: :btree
  add_index "asteroids", ["perihelion_distance"], name: "index_asteroids_on_perihelion_distance", using: :btree
  add_index "asteroids", ["perihelion_distance_uncertainty_dbl"], name: "index_asteroids_on_perihelion_distance_uncertainty_dbl", using: :btree
  add_index "asteroids", ["period"], name: "index_asteroids_on_period", using: :btree
  add_index "asteroids", ["saturn_moid"], name: "saturn_moid", using: :btree
  add_index "asteroids", ["semimajor_axis"], name: "index_asteroids_on_semimajor_axis", using: :btree
  add_index "asteroids", ["spin_max_amplitude"], name: "index_asteroids_on_spin_max_amplitude", using: :btree
  add_index "asteroids", ["spin_min_amplitude"], name: "index_asteroids_on_spin_min_amplitude", using: :btree
  add_index "asteroids", ["spin_period"], name: "index_asteroids_on_spin_period", using: :btree
  add_index "asteroids", ["taxonomy_class"], name: "index_asteroids_on_taxonomy_class", using: :btree
  add_index "asteroids", ["tisserand_jupiter"], name: "tisserand_jupiter", using: :btree
  add_index "asteroids", ["uranus_moid"], name: "uranus_moid", using: :btree
  add_index "asteroids", ["venus_moid"], name: "venus_moid", using: :btree

  create_table "hazards", force: true do |t|
    t.string   "designation"
    t.string   "year_range"
    t.integer  "potential_impacts"
    t.float    "impact_probability", limit: 24
    t.decimal  "velocity",                      precision: 10, scale: 0
    t.decimal  "h_mag",                         precision: 10, scale: 0
    t.decimal  "est_diameter",                  precision: 10, scale: 0
    t.decimal  "palermo_cum",                   precision: 10, scale: 0
    t.decimal  "palermo_max",                   precision: 10, scale: 0
    t.integer  "torino"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
