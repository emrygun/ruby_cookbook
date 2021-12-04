class NumberParser
  @@number_regexps = {
    :to_i => /([+-]?[0-9]+)/,
    :to_f => /([+-]?([0-9]*\.)?[0-9]+(e[+-]?[0.9]+)?)/i,
    :oct => /([+-]?[0-7]+)/,
    :hex => /\b[+-]?(0x)?[0-9a-f]+\b/i
  }

  def NumberParser.re(parsing_method=:to_i)
    re = @@number_regexps[parsing_method]
    raise ArgumentError, "No regexp for #{parsing_method.inspect}!" unless re
    return re
  end

  def extract(s, parsing_method=:to_i)
    numbers = []
    s.scan(NumberParser.re(parsing_method)) do |match|
      numbers  << match[0].send(parsing_method)
    end
    numbers
  end

end

p = NumberParser.new

pw = "Todays numbers are 104 and 391."
p NumberParser.re(:to_i).match(pw).captures
p p.extract(pw, :to_i)
