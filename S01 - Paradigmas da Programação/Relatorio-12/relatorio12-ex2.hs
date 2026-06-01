module Main where

-- TIPOS
data Item = Item
  { nome      :: String
  , categoria :: String
  , preco     :: Double
  }

data StatusCompra = Pendente | Concluida | Cancelada

data Compra = Compra
  { itens  :: [Item]
  , status :: StatusCompra
  }

-- FUNÇÕES
totalItens :: [Item] -> Double
totalItens is = sum (map preco is)

valorFinal :: Compra -> Double
valorFinal c
  | Cancelada <- status c = 0.0
  | total > 200           = total * 0.9
  | otherwise             = total
  where total = totalItens (itens c)

-- MAIN
main :: IO ()
main = do
  let compra = Compra
        [ Item "Master Sword"   "Arma"    150.00
        , Item "Bow of Light"   "Arma"   100.00
        , Item "Hylian Shield"   "Defesa"   120.00
        , Item "Poção Vermelha"  "Item"     30.00
        ] Concluida

  let total = valorFinal compra

  putStrLn "\n--- Loja de Hyrule ---"
  putStrLn $ "Total bruto: R$ " ++ show (totalItens (itens compra))
  putStrLn $ "Valor final:  R$ " ++ show total