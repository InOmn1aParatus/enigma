require 'date'

class Offset
  def generate(date = Date.today.strftime('%d%m%y'))
    squared = date.to_i**2
    @offset = squared.to_s[-4..-1]
  end
end