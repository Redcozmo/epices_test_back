class HomeController < ApplicationController
  def index
    @hourly_data = HourlyDatum.all
    @daily_data = DailyDatum.all
    @inverters = Inverter.all
  end
end
