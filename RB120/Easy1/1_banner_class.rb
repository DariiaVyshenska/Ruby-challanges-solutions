class Banner
  def initialize(message, width = nil)
    self.message = message
    self.width = width ? (width - 2) : message_line_size
  end

  def to_s
    invalid_width? ? error_msg : compile_banner
  end

  private

  attr_accessor :message, :width

  HORIZONTAL_CHAR = '-'

  def compile_banner
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  def error_msg
    'ERROR! Width must be larger or equal to (message size + 4)'
  end

  def invalid_width?
    width < message_line_size
  end

  def message_line_size
    message.size + 2
  end

  def horizontal_rule
    "+#{HORIZONTAL_CHAR * (width)}+"
  end

  def empty_line
    "|#{' '* (width)}|"
  end

  def message_line
    "|#{message.center(width)}|"
  end
end

banner = Banner.new('1234567', 12)
puts banner

banner = Banner.new('To boldly go where no one has gone before.')
puts banner
