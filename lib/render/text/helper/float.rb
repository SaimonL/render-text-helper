# frozen_string_literal: true

# Added methods to float
class Float
  def add_percent_sign
    return nil if self.nil?

    self.to_s.concat('%')
  end
end
