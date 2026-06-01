module Main where

-- TIPOS
data Bebida = Bebida
  { nome  :: String
  , tipo  :: String
  , preco :: Double
  }

data StatusPedido = Aberto | Entregue | Cancelado

data Pedido = Pedido
  { bebidas :: [Bebida]
  , status  :: StatusPedido
  }

-- FUNÇÕES
valorTotalPedido :: Pedido -> Double
valorTotalPedido p
  | Cancelado <- status p = 0.0
  | otherwise             = sum (map preco (bebidas p))

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _)    = "Nenhuma bebida no pedido."
primeiraBebida (Pedido (x:_) _) = "Primeira bebida: " ++ nome x

main :: IO ()
main = do
  let cafe = Bebida "Cafe" "Quente" 5.0
  let suco = Bebida "Suco" "Frio" 8.0
  let cha  = Bebida "Cha" "Quente" 4.0

  let pedidoEntregue = Pedido [cafe, suco, cha] Entregue
  let pedidoCancelado = Pedido [cafe, suco] Cancelado
  let pedidoVazio = Pedido [] Aberto

  putStrLn "Pedido entregue:"
  print (valorTotalPedido pedidoEntregue)
  putStrLn (primeiraBebida pedidoEntregue)

  putStrLn "\nPedido cancelado:"
  print (valorTotalPedido pedidoCancelado)
  putStrLn (primeiraBebida pedidoCancelado)

  putStrLn "\nPedido vazio:"
  print (valorTotalPedido pedidoVazio)
  putStrLn (primeiraBebida pedidoVazio)