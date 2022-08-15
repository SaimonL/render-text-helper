# frozen_string_literal: true

# Added methods to boolean module
module BooleanHelper
  def to_yn(capital_letter: true)
    if self
      capital_letter ? 'Y' : 'y'
    else
      capital_letter ? 'N' : 'n'
    end
  end

  def to_yes_no(capital_letter: false)
    if self
      capital_letter ? 'YES' : 'yes'
    else
      capital_letter ? 'NO' : 'no'
    end
  end
end

class TrueClass
  include BooleanHelper
end

class FalseClass
  include BooleanHelper
end
