module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


type Op
    = PlusOp
    | DivOp
    | MinusOp
    | MultOp


type Model
    = Blank
    | FirstArg Int
    | Operating Int Op
    | SecondArg Int Op Int


type Msg
    = One
    | Two
    | Three
    | Four
    | Five
    | Six
    | Seven
    | Eight
    | Nine
    | Zero
    | Plus
    | Minus
    | Divide
    | Multiply
    | Eval


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


view : Model -> Html Msg
view model =
    div [ class "calc" ]
        [ div [ class "screen" ] [ text "42" ]
        , div [ class "keyboard" ]
            [ div [ class "row" ]
                [ button [ class "button", onClick Seven ] [ text <| toString 7 ]
                , button [ class "button", onClick Eight ] [ text <| toString 8 ]
                , button [ class "button", onClick Nine ] [ text <| toString 9 ]
                , button [ class "button", onClick Divide ] [ text "÷" ]
                ]
            , div [ class "row" ]
                [ button [ class "button", onClick Four ] [ text <| toString 4 ]
                , button [ class "button", onClick Five ] [ text <| toString 5 ]
                , button [ class "button", onClick Six ] [ text <| toString 6 ]
                , button [ class "button", onClick Multiply ] [ text "×" ]
                ]
            , div [ class "row" ]
                [ button [ class "button", onClick One ] [ text <| toString 1 ]
                , button [ class "button", onClick Two ] [ text <| toString 2 ]
                , button [ class "button", onClick Three ] [ text <| toString 3 ]
                , button [ class "button", onClick Minus ] [ text "−" ]
                ]
            , div [ class "row" ]
                [ button [ class "button", onClick Zero ] [ text <| toString 0 ]
                , button [ class "button", onClick Eval ] [ text "=" ]
                , button [ class "button", disabled True ] [ text "💩" ]
                , button [ class "button", onClick Plus ] [ text "+" ]
                ]
            ]
        ]
