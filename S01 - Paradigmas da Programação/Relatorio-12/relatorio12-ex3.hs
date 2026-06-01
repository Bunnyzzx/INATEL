module Main where

-- TIPOS
data Banda = Banda
  { nome   :: String
  , genero :: String
  , cache  :: Double
  }

data StatusEvento = Ativo | Encerrado | Cancelado

data Evento = Evento
  { bandas :: [Banda]
  , status :: StatusEvento
  }

-- FUNÇÕES
custoTotalEvento :: Evento -> Double
custoTotalEvento e
  | Cancelado <- status e = 0.0
  | otherwise             = sum (map cache (bandas e)) * 1.2

bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _)    = "Nenhuma banda no evento."
bandaAbertura (Evento (x:_) _) = "Banda de abertura: " ++ nome x

bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "Nenhuma banda no evento."
bandaEncerramento (Evento bs _) = "Banda de encerramento: " ++ nome (last bs)

-- AUXILIAR
exibirEvento :: String -> Evento -> IO ()
exibirEvento titulo e = do
  putStrLn $ "\n--- " ++ titulo ++ " ---"
  putStrLn $ bandaAbertura e
  putStrLn $ bandaEncerramento e
  putStrLn $ "Custo total: R$ " ++ show (custoTotalEvento e)

-- MAIN
main :: IO ()
main = do
  let evento1 = Evento
        [ Banda "Metallica"          "Heavy Metal"      50000
        , Banda "Linkin Park"        "Rock Alternativo" 45000
        , Banda "ABBA"               "Pop"              35000
        , Banda "Daft Punk"          "Eletronica"       60000
        ] Ativo

  let evento2 = Evento
        [ Banda "Slipknot"           "Nu Metal"         55000
        , Banda "Charlie Brown Jr"   "Rock Nacional"    30000
        , Banda "Mamonas Assassinas" "Humor Rock"       25000
        ] Encerrado

  let evento3 = Evento
        [ Banda "Iron Maiden"        "Heavy Metal"      70000
        , Banda "Queen"              "Rock"             80000
        , Banda "Daft Punk"          "Eletronica"       60000
        ] Cancelado

  exibirEvento "Evento Ativo"     evento1
  exibirEvento "Evento Encerrado" evento2
  exibirEvento "Evento Cancelado" evento3