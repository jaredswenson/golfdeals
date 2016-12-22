class PlayerTeeTime < ApplicationRecord
  belongs_to :teetime
  belongs_to :player
end
