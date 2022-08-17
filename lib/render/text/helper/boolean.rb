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

  # casting: capitalize | upcase | downcase
  def to_yes_no(casting = :capitalize)
    if self
      'yes'.send(casting.to_sym)
    else
      'no'.send(casting.to_sym)
    end
  end
end

class TrueClass
  include BooleanHelper
end

class FalseClass
  include BooleanHelper
end
