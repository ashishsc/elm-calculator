module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias Model =
    ()


type Msg
    = Massage


main : Program Never () Msg
main =
    Html.beginnerProgram
        { model = ()
        , view = view
        , update = update
        }


update : Msg -> Model -> Model
update msg model =
    ()


view : Model -> Html msg
view model =
    div [ class "calc" ]
        [ div [ class "screen" ] [ text "42" ]
        , div [ class "keyboard" ]
            [ div [ class "row" ]
                [ button [ class "button" ] [ text <| toString 7 ]
                , button [ class "button" ] [ text <| toString 8 ]
                , button [ class "button" ] [ text <| toString 9 ]
                , button [ class "button" ] [ text "÷" ]
                ]
            , div [ class "row" ]
                [ button [ class "button" ] [ text <| toString 4 ]
                , button [ class "button" ] [ text <| toString 5 ]
                , button [ class "button" ] [ text <| toString 6 ]
                , button [ class "button" ] [ text "×" ]
                ]
            , div [ class "row" ]
                [ button [ class "button" ] [ text <| toString 1 ]
                , button [ class "button" ] [ text <| toString 2 ]
                , button [ class "button" ] [ text <| toString 3 ]
                , button [ class "button" ] [ text "−" ]
                ]
            , div [ class "row" ]
                [ button [ class "button" ] [ text <| toString 0 ]
                , button [ class "button" ] [ text "=" ]
                , button [ class "button", disabled True ] [ text "💩" ]
                , button [ class "button" ] [ text "+" ]
                ]
            ]
        ]
