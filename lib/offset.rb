require 'date'

class Offset
  attr_reader :key, :date, :offset

  def initialize(key = nil, date = nil)
    if key.nil?
      @key = key_gen
    else
      @key = key
    end
  
    if date.nil?
      @date = Date.today.strftime('%d%m%y')
    else
      @date = date
    end
    offset_gen
  end

  def offset_gen
    squared = @date.to_i**2
    @offset = squared.to_s[-4..-1]
  end

  def key_gen
    rand(99_999).to_s.rjust(5, '0')
  end

  def a_rotation
    @key[0..1].to_i
  end

  def b_rotation
    @key[1..2].to_i
  end

  def c_rotation
    @key[2..3].to_i
  end

  def d_rotation
    @key[3..4].to_i
  end

  def a_offset
    @offset[0].to_i
  end
  
  def b_offset
    @offset[1].to_i
  end
  
  def c_offset
    @offset[2].to_i
  end
  
  def d_offset
    @offset[3].to_i
  end
end
