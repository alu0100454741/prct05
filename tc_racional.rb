# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

	def setup
		@a = Fraccion.new(2, 3)
		@b = Fraccion.new(5, 2)
		@c = Fraccion.new(2, 1)
		@d = Fraccion.new(19,6)
		@suma = @a + @b
	end

	def test_to_s
	    assert_equal("2/1", @c.to_s)       
	    assert_equal("2/3", @a.to_s) 
	    assert_equal("5/2", @b.to_s)  
	end

	def test_suma
    	assert_equal(@d, @suma)
    	#assert_equal([11, 10], Fraccion.new(3,5).suma(1,2))  # (3/5) + (1/2) = (11/10)
    	#assert_equal([17, 6], Fraccion.new(5,2).suma(2,6))   # (5/2) + (2/6) = (17/6)
    	#assert_equal([4, 1], Fraccion.new(15,5).suma(5,5))   # (15/5) + (5/5) = (4)
	end







end
