class Bitmap
  attr_reader :list, :bytes_per_line
  def initialize(list_of_bytes, bytes_per_line = 1 )
    @list = list_of_bytes
    @bytes_per_line = bytes_per_line
  end

  def to_s
    list.map.each_slice(bytes_per_line).map do |byte_line|
      byte_line.map { |byte| ("%08b" % byte).tr "10", "#." }.join ''
    end.join "\n"
  end
end
