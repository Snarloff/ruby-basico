# Métodos

def sum_numbers(num1, num2)
	return num1 + num2
end

puts sum_numbers(10, 20)

# Classes

class Calculator
	attr_accessor :phrase
	def initialize(num1, num2)
		@num1 = num1
		@num2 = num2
	end

	def sum
		return @num1+@num2
	end	

	def minus
		return @num1-@num2
	end

	def multiplication
		return @num1*@num2
	end

	def division
		return @num1/@num2
	end

	def exponentization
		return @num1**@num2
	end

	def square_root
		return Math.sqrt(@num1)		
	end
end

calc = Calculator.new(50, 2)
puts calc.division
calc.phrase = "Hello, World"
puts calc.phrase

class Restaurante
	attr_accessor :nota

	def initialize(name)
		puts "O Restaurante chamará: #{name}"
		@name = name
	end

	def send(options = {})
		endereco = options.fetch(:adress, "adress")
		puts "Enviaremos para %s" %(endereco)
	end

	def feedback(msg="Obrigado pela avaliação")
		if nota.to_i <= 5.9
			resposta = "Tentaremos melhorar sempre que possível!"
		elsif nota.to_i >= 6

			resposta = "Vamos melhorar nosso atendimento. Até mais."
		elsif nota.to_i > 8
			resposta = "Volte sempre!"
		elsif nota.to_i == " "
			resposta = "Houve um problema com nosso Sistema."
		end
		puts "#{msg} nota #{nota}. #{resposta}"
	end
end

abc = Restaurante.new("Ruby Restaurant")
puts "Digite a nota: "
abc.nota = gets.chomp
abc.feedback
abc.send(adress: "Potato 626")
