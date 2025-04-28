module Lib () where

import Text.Show.Functions ()



data Personaje = unPersonaje {
    nombre :: String,
    poderBasico :: Int,
    tipoDeAtaque :: String,
    superPoder :: String,
    superPoderActivo :: Bool,
    cantidadDeVida :: Int
}

bolaEspinosa :: Personaje -> Personaje
bolaEspinosa unPersonaje |personaje{cantidadDeVida} >= 1000 = personaje{cantidadDeVida = cantidadDeVida-1000 }
                        |otherwise personaje{cantidadDeVida=0}

lluviaDeTuercas :: Bool -> Personaje -> Personaje
lluviaDeTuercas esSanadora personaje | esSanadora = personaje{cantidadDeVida = cantidadDeVida + 800} 
                                    | otherwise = personaje{cantidadDeVida = cantidadDeVida/2} 
lluviaDeTuercas true
lluviaDeTuercas false

modificarVida :: Int -> Personaje -> Personaje
modificarVida vida personaje = personaje {cantidadDeVida = vida}

doble :: Int -> Int
doble x = x * 2