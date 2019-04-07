-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Query exposing (DiscountOrErrorRequiredArguments, DiscountRequiredArguments, discount, discountOrError, products, shoppingCartItems, userid)

import Api.InputObject
import Api.Interface
import Api.Object
import Api.Scalar
import Api.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import Scalar


products : SelectionSet decodesTo Api.Object.Product -> SelectionSet (List decodesTo) RootQuery
products object_ =
    Object.selectionForCompositeField "products" [] object_ (identity >> Decode.list)


shoppingCartItems : SelectionSet decodesTo Api.Object.Product -> SelectionSet (List decodesTo) RootQuery
shoppingCartItems object_ =
    Object.selectionForCompositeField "shoppingCartItems" [] object_ (identity >> Decode.list)


userid : SelectionSet String RootQuery
userid =
    Object.selectionForField "String" "userid" [] Decode.string


type alias DiscountOrErrorRequiredArguments =
    { discountCode : String }


{-|

  - discountCode - Cardholder name

-}
discountOrError : DiscountOrErrorRequiredArguments -> SelectionSet decodesTo Api.Union.DiscountedProductInfoOrError -> SelectionSet decodesTo RootQuery
discountOrError requiredArgs object_ =
    Object.selectionForCompositeField "discountOrError" [ Argument.required "discountCode" requiredArgs.discountCode Encode.string ] object_ identity


type alias DiscountRequiredArguments =
    { discountCode : String }


{-|

  - discountCode - Cardholder name

-}
discount : DiscountRequiredArguments -> SelectionSet decodesTo Api.Object.DiscountedProductInfo -> SelectionSet decodesTo RootQuery
discount requiredArgs object_ =
    Object.selectionForCompositeField "discount" [ Argument.required "discountCode" requiredArgs.discountCode Encode.string ] object_ identity