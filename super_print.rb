def super_print(string, options = {})
  defaults = { :times => 1 , :upcase => false , :reverse => false }

  options = defaults.merge(options)

  string = super_upcase(string, options)
  string = super_reverse(string, options)
  options[:times].times do
    print string
  end


end

def super_upcase(string, options)
  if options[:upcase] == true
    string = string.upcase
  end
  string
end

def super_reverse(string, options)
  if options[:reverse] == true
    string = string.reverse
  end
  string
end