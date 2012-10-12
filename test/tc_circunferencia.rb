# File: tc_circunferencia.rb
 
require "../lib/circunferencia"
require "test/unit"
 
class TestCircunferencia < Test::Unit::TestCase

	def setup
		@circ = Circunferencia.new()
	end
 
	def teardown
		## Nothing really
	end
 
	# Test correcto.
	def test_simple
		assert_equal(12, @circ.radio(75.36) )
	end
  
	# Si le paso algo que no sea un número.
	def test_typecheck
		assert_raise( RuntimeError ) { @circ.radio('a') }
	end
	
	# Si le paso un número negativo.
	def test_failure
		assert(@circ.radio(-3) < 0 )
	end
 
end