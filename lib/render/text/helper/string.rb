# frozen_string_literal: true

# Adds function to existing String class
class String
  # outputs string where it replaces \n or \r with actual return
  def escaped_newline_to_newline
    gsub('\n', "\n").gsub('\r', "\n")
  end

  # output the string giving the limit. It does not touch the string
  def limit_print(limit: 32, more_indicator: '.', indicator_length: 3)
    return self if size < limit

    [self[0...limit], (more_indicator * indicator_length)].join
  end

  # outputs an array
  def to_smart_array(separator = nil)
    return [] if nil?

    return split(separator).map(&:strip) unless separator.nil?
    return split(',').map(&:strip) if include?(',')

    split.map(&:strip)
  end

  def to_titleize
    return '' if self == ''
    return upcase if length == 1

    gsub('_', ' ').strip.split.map(&:capitalize).join(' ')
  end
end
