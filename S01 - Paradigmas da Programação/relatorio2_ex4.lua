function soma(a, b)
  return a + b
end

function sub(a, b)
  return a - b
end

function mult(a, b)
  return a * b
end

function div(a, b)
  return a / b
end

function calculadora(a, b, op)

  if op == "+" then
    return soma(a, b)

  elseif op == "-" then
    return sub(a, b)

  elseif op == "*" then
    return mult(a, b)

  elseif op == "/" then
    return div(a, b)

  else
    return "Operador invalido"
  end

end

print("Digite o primeiro numero:")
local a = tonumber(io.read())

print("Digite o segundo numero:")
local b = tonumber(io.read())

print("Digite o operador (+ - * /):")
local op = io.read()

local resultado = calculadora(a, b, op)

print("Resultado:", resultado)