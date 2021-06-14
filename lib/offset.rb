require 'date'

class Offset
  def generate(date = Date.today.strftime('%d%m%y'))
    date_squared = date.to_i**2
    offset = date_squared.to_s[-4..-1]
  end

  def key_gen
    rand(99_999).to_s.rjust(5, '0')
  end
end
