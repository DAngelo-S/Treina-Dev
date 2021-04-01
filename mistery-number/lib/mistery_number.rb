class MisteryNumber
  def mult(operation, index)
    resp = [false, operation[index].to_f, index+1]
    index += 1
    sinal = ""
    while index < operation.size
      if (operation[index] == '+' || operation[index] == '-' || operation[index] == '=')
        resp[2] = index - 1
        return resp
      elsif (operation[index] == '/')
        sinal = '/'
      elsif (operation[index] == '*')
        sinal = '*'
      elsif (operation[index] == '?')
        resp[0] = true
      else
        if(sinal == '*')
          resp[1] = resp[1] * operation[index].to_f
        else
          resp[1] = resp[1] / operation[index].to_f
        end
      end
      index += 1
    end
    resp[2] = index - 1
    return (resp[0] && resp[1] == 0 ? "Qualquer coisa" : resp)
  end
  
  def calculate(operation)
    signal = "+"
    multiplier = 1.to_f
    tmp = ""
    index = 0
    operation = operation.split(" ")
    result = operation[operation.size-1].to_f

    while index < operation.size - 2
      if(operation[index] == '+')
        signal = '+'
      elsif(operation[index] == '-')
        signal = '-'
      elsif (operation[index] == '*' || operation[index] == '/')
        tmp = mult(operation, index-1)
        if(tmp == "Qualquer coisa")
          return "Qualquer coisa"
        elsif(tmp[0])
          multiplier = 1/tmp[1].to_f
        elsif
          if(signal == '+')
            result -= tmp[1].to_f
          else
            result += tmp[1].to_f
          end
        end
        index = tmp[2]
      elsif (operation[index+1] != '*' && operation[index+1] != '/')
        if(signal == '+')
          result -= operation[index].to_f
        else
          result += operation[index].to_f
        end
      end
      index += 1
    end  

    #puts (operation)
    #puts result
    #puts multiplier
    
    result = result * multiplier

  end
end
