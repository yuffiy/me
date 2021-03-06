{- mode: Elm -}
{- coding: utf-8 -}
module Profile.Model where

type alias Contact =
  { path    : String
  , href    : String
  , name    : String
  , content : String
  , order   : Int
  }

                   
type alias Prop =
  { name  : String
  , value : List String
  }


type alias Me =
  { avatar : String
  , langs  : List String
  }


initMe : Me
initMe =
  { avatar = ""
  , langs  = []
  }
