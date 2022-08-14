class String
  def limit_print(limit = 32, more_indicator = '.')
    return if nil?
    return self if size < limit

    [self[0...limit], more_indicator, more_indicator, more_indicator].join
  end
end
