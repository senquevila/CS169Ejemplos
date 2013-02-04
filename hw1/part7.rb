class CartesianProduct
  include Enumerable
  
  def initialize(arreglo1, arreglo2)
    @arreglo1 = arreglo1
    @arreglo2 = arreglo2
  end  
  
  def each
    @arreglo1.each do |x|
      @arreglo2.each do |y|
        yield [x, y]
      end
    end
  end
end

#c = CartesianProduct.new([:a,:b,:c],[4,5])
#c.each { |elt| puts elt.inspect }
