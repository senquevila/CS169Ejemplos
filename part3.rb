def reorder_word(word)
  return word.downcase.split(//).sort!.join
end

def combine_anagrams(words)
  input = words
  output_parent = []  
  
  while (input.size > 0) do
    sub_output = []       
    valor = input.shift
    sub_output << valor
    
    x = 0;
    
    while (x < input.size)              
      if (reorder_word(valor) == reorder_word(input[x]))        
        sub_output << input[x]
        input.slice!(x)
      else
        x += 1 
      end        
    end
        
    output_parent << sub_output      
  end 
    
  return output_parent
end
 
#b = ['dos','tres','ters', 'ters', 'sod']
#a = ['a']  
#print combine_anagrams(b)