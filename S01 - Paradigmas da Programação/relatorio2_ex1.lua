print ("Digite M")
local M = tonumber(io.read())
print("Digite N")
local N = tonumber(io.read())
print ("Digite X")
local X = tonumber(io.read())

for i = M, N do
  local resultado = X * i 
  print(X, "x", i, "=", resultado)
end
  
  