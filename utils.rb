module Utils
  def sanitize_input(input)
    input&.gsub(/[^0-9A-Za-z]/, '')
  end
end
