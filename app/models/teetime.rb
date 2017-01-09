class Teetime < ApplicationRecord
  belongs_to :course
  
  scope :current, -> { endtime >= Date.current }
end
