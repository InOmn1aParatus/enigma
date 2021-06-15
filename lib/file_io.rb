class FileIO
  def message(filename = ARGV[0])
    File.open(filename, "r").read
  end

  def output(cryption, filename = ARGV[1])
    file = File.open(filename, "w")
    file.write(cryption)
    file.close
  end
end