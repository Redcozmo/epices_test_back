class Visualize

  attr_accessor :tab

  require 'csv'

  def initialize(file)
    @tab = []
    if file
      CSV.foreach(file.path, headers: true) do |row|
        @tab << row.to_hash
      end
    end
  end

end
