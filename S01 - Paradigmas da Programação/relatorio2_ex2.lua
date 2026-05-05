print ("Digite qnt vezes")
local n = tonumber(io.read())
local tabela = {} 

for i = 1, n do
  print("Digite o valor:")
  tabela[i] = tonumber(io.read())
end

local maior = tabela[1]

for i = 2, n do 
  if tabela[i]> maior then
    maior = tabela[i]
  end
end

print("Maior valor:",maior)
  