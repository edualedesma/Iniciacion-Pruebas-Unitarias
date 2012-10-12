# File: tc_circunferencia.rb
 
require "circunferencia"
require "test/unit"
 
class TestCircunferencia < Test::Unit::TestCase

	def setup
		@circ = Circunferencia.new()
	end
 
	def teardown
		## Nothing really
	end
 
	# Test correcto.
	def test_correcto
		assert_equal(12, @circ.radio(75.36) )
	end
	
	# Test incorrecto.
	def test_incorrecto
		assert_equal(10, @circ.radio(75.36) )
	end
  
	# Si le paso algo que no sea un número.
	def test_letra
		assert_raise(RuntimeError,"El perimetro tiene que ser un numero positivo") { @circ.radio('a') }
	end
	
	# Si le paso un número negativo.
	def test_negativo
		assert_raise(RuntimeError, "No puede haber un perimetro negativo") {@circ.radio(-50)}
	end
 
end