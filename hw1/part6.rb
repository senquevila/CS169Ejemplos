class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  
  def in(currency_name)
    currency_name = currency_name.to_s.gsub(/s$/, '')
    self / @@currencies[currency_name] 
  end 
end

class String
  def palindrome?    
    return unless String === self
    str = self.gsub(/\W/, '').downcase
    str == str.reverse
  end
end

module Enumerable
  def palindrome?    
     str = self.flatten.join
     str = str.gsub(/\W/, '').downcase
     str == str.reverse
   end
end

#print 5.dollar.in(:euro)
#print "ana".palindrome?
#print [[2,1], 'a', 'a', [1,2]].palindrome?