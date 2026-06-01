module Main where

-- TIPOS
data Servico = Servico
  { nome  :: String
  , tipo  :: String
  , preco :: Double
  }

data StatusAtendimento = EmAndamento | Finalizado | Cancelado

data Atendimento = Atendimento
  { servicos :: [Servico]
  , status   :: StatusAtendimento
  }

-- FUNÇÕES
totalServicos :: [Servico] -> Double
totalServicos ss = sum (map preco ss)

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento a
  | Cancelado <- status a       = 0.0
  | length (servicos a) > 3    = total * 1.25
  | otherwise                  = total
  where total = totalServicos (servicos a)

primeiroServico :: Atendimento -> String
primeiroServico (Atendimento [] _)    = "Nenhum servico no atendimento."
primeiroServico (Atendimento (x:_) _) = "Primeiro servico: " ++ nome x

exibirAtendimento :: String -> Atendimento -> IO ()
exibirAtendimento titulo a = do
  putStrLn $ "\n--- " ++ titulo ++ " ---"
  putStrLn $ primeiroServico a
  putStrLn $ "Valor final: R$ " ++ show (valorFinalAtendimento a)

-- MAIN
main :: IO ()
main = do
  let atendimento1 = Atendimento
        [ Servico "Banho Espiritual"  "Limpeza"    120.00
        , Servico "Esfoliacao"        "Estetica"    80.00
        , Servico "Massagem"          "Relaxamento" 150.00
        , Servico "Aromaterapia"      "Terapia"     90.00
        ] Finalizado

  let atendimento2 = Atendimento
        [ Servico "Banho de Lama"     "Limpeza"    200.00
        , Servico "Hidratacao"        "Estetica"   100.00
        ] EmAndamento

  exibirAtendimento "Atendimento 1 (Finalizado)"   atendimento1
  exibirAtendimento "Atendimento 2 (Em Andamento)" atendimento2