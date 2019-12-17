class DailyDatum < ApplicationRecord
  has_many :hourly_data
  belongs_to :inverter
end
