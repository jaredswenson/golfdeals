class Teetime < ApplicationRecord
  belongs_to :course
  has_many :players, through: :player_tee_times
  has_many :player_tee_times
end
