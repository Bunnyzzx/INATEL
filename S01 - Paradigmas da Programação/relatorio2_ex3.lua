print ("Digite N numeros")
local n = tonumber(io.read())

local tabela_geral = {}

for i = 1, n do
  print("Digite o valor:")
  tabela_geral[i] = tonumber(io.read())
end

local tabela_imp = {}
local k = 1

for j = 1, n do
  if tabela_geral[j] % 2 == 1 then
    tabela_imp[k] = tabela_geral[j]
    k = k + 1
  end
end

print("Numeros impares:")

for i = 1, #tabela_imp do
  print(tabela_imp[i])
end
  