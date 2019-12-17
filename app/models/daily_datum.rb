class DailyDatum < ApplicationRecord
  has_many :hourly_data
  belongs_to :inverter

  # day production calculation
  def sum
    sum = 0
    hourly_data.each { |prod| sum += prod.energy }
    return sum
  end

end
