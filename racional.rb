# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	attr_reader :numerador, :denominador

	include Comparable
	include Enumerable

	#Iniacilizacion de una Fraccion.
	def initialize(numerador, denominador)  
		@numerador, @denominador = numerador, denominador  
	end  

	#Convierte un Objeto Fraccion en String
	def to_s
		"#@numerador/#@denominador"
	end

	#Multiplicacion de Numeros Racionales

	def *(other)
		return Fraccion.new(@numerador*other,   @denominador) if other.is_a? Numeric
    	return Fraccion.new(@numerador*other.numerador, @denominador*other.denominador) if other.is_a? Fraccion
	end

	#Division de Numeros Racionales
	def /(other)
		return Fraccion.new(@denominador*other,   @numerador) if other.is_a? Numeric
    	return Fraccion.new(@numerador*other.denominador, @denominador*other.numerador) if other.is_a? Fraccion
	end

	def coerce(other)
    	[self, other]
    end

end


