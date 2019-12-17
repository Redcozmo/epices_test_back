class Import

  attr_accessor :tab

  require 'csv'

  def initialize(file)
    if file
      CSV.foreach(file.path, headers: true) do |row|
        @hourly_data = row.to_hash

        if @hourly_data["identifier"] != nil

          unless Inverter.find_by(num: @hourly_data["identifier"])
            inv = Inverter.create(num: @hourly_data["identifier"])
          end

          date = DateTime.strptime(@hourly_data["datetime"], "%d/%m/%y %H:%M").to_date
          dd_exist = DailyDatum.where(date: date).where(inverter_id: @hourly_data["identifier"]).first
          unless dd_exist
            daily_prod = DailyDatum.new(date: date)
            daily_prod.inverter = Inverter.find_by(num: @hourly_data["identifier"])
            daily_prod.save
          end

          datetime = DateTime.strptime(@hourly_data["datetime"], "%d/%m/%y %H:%M")
          hourly_prod = HourlyDatum.new(datetime: datetime, energy: @hourly_data["energy"])
          hourly_prod.daily_datum = DailyDatum.where(date: date).where(inverter_id: @hourly_data["identifier"]).first
          hourly_prod.save

        else
          puts "@hourly_data['identifier'] == nil"
        end
      end
    end
  end

  def daily_sum
    DailyDatum.all.each { |dd| dd.update(daily_energy: dd.sum) }
  end

end
