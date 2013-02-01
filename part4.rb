class Dessert
  attr_accessor :name, :calories
  
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
#  def name=(name)
#    @name = name
#  end
#  
#  def calories=(calories)
#    @calories = calories
#  end
#  
#  def name
#    @name
#  end
#  
#  def calories
#    @calories
#  end
#  
  def healthy?
    if (@calories < 200)
      return true
    else
      return false
    end
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :name, :calories, :flavor
  
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end
  
#  def flavor=(flavor)
#    @flavor = flavor
#  end
#  
#  def flavor
#    @flavor
#  end
  
  def delicious?
    if (@flavor == "black licorice")
      return false
    else
      return true
    end
  end
end

nombre = "test"
calorias = 190
sabor = "coc"
a = JellyBean.new(nombre, calorias, sabor)

print a.flavor()


##if (delicious?(a.flavor))
##  print "rico"
##else
##  print "esta malo"
##end
