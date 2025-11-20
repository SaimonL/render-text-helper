# frozen_string_literal: true

# Added methods to float
class Float
  def add_percent_sign
    return nil if nil?

    to_s.concat('%')
  end
end
