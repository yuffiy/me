module Logo.View (view) where

{-| 这里是LOGO -}

import Html            exposing (..)
import Html.Attributes exposing (..)
import Util.Class    exposing (class2)

view : String -> Html
view str =
  let
    leftView =
      section [ class "flex-con" ] [ logoView ]

    rightView =
      section
        [ class2 "flex-col" "flex-justify-cen" ]
        [ labelView str
        , introView
        ]
  in
    header
      [ class2 "noSelected" "flex" ]
      [ leftView
      , rightView
      ]

logoView : Html
logoView =
  section [ logoStyle ]
          [ span [] [ text "H" ]
          , span [ redColor ] [ text "J" ]
          ]

labelView : String -> Html
labelView str =
  section [ labelStyle ] [ text str ]


introView : Html
introView =
  section [ introStyle ] [ text "Happy Hack With My Life" ]


headerStyle : Attribute
headerStyle =
  style [ ("display", "flex")
        ]

leftStyle : Attribute
leftStyle =
  style [ ("display", "flex")
        , ("justifyContent", "center")
        , ("alignItems", "center")
        ]

rightStyle : Attribute
rightStyle =
  style [ ("display", "flex")
        , ("flexFlow", "column nowrap")
        , ("justifyContent", "center")
        ]

logoStyle : Attribute
logoStyle =
  style [ ("font-size", "4rem")
        , ("font-weight", "100")
        , ("margin", "0 1rem")
        ]

redColor : Attribute
redColor =
  style [ ("color", "rgba(255, 0, 0, 1)") ]


labelStyle : Attribute
labelStyle =
  style [ ("font-size", "1.2rem")
        , ("color", "rgba(0, 0, 0, 0.56)")
        , ("margin", "0 0 0.5rem 0")
        ]

introStyle : Attribute
introStyle =
  style [ ("font-size", "0.8rem")
        , ("color", "rgba(0, 0, 0, 0.32)")
        ]
