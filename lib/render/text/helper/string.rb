# frozen_string_literal: true

# Adds function to existing String class
class String
  # output the string giving the limit. It does not touch the string
  def limit_print(limit: 32, more_indicator: '.', indicator_length: 3)
    return self if size < limit

    [self[0...limit], (more_indicator * indicator_length)].join
  end
end
