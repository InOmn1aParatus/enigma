class KeyGen

  def gen
    rand(99999).to_s.rjust(5, '0')
  end
  
end