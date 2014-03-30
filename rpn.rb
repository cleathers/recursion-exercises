class Rpn
  def initialize
    if __FILE__ == $PROGRAM_NAME
      @text = File.read(ARGV[0]).chomp.split(' ')
    end
  end

  def rpn_calculator(stack=[])

    if @text
      if @text.empty?
        return stack
      else
        input = @text.shift
      end
    else
      input = get_input
    end

    if is_operand?(input) == true
        num1 = stack.pop
        num2 = stack.pop
        return_num = run_operation(num1, num2, input)
        stack << return_num
    else
      stack << input.to_i
    end
    puts stack
    rpn_calculator(stack)
  end

  def get_input
    puts "Enter number or operand"
    input = gets.chomp

    input
  end

  def is_operand?(input)
    operands = ["+" , "-" , "*" , "/"]
    if operands.include?(input)
      true
    else
      false
    end
  end

  def run_operation(num1, num2, operator)
    case operator
    when '+'
      add(num1, num2)
    when '-'
      subtract(num1, num2)
    when '*'
      multiply(num1, num2)
    when '/'
      divide(num1, num2)
    end
  end

  def add(num1, num2)
    num1 + num2
  end

  def subtract(num1, num2)
    num1 - num2
  end

  def multiply(num1, num2)
    num1 * num2
  end

  def divide(num1, num2)
    num2 / num1
  end

end

x = Rpn.new
x.rpn_calculator