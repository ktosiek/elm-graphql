-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.StatusContext exposing (commit, context, createdAt, creator, description, id, selection, state, targetUrl)

import Github.Enum.StatusState
import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.StatusContext
selection constructor =
    Object.selection constructor


{-| This commit this status context is attached to.
-}
commit : SelectionSet decodesTo Github.Object.Commit -> Field (Maybe decodesTo) Github.Object.StatusContext
commit object_ =
    Object.selectionField "commit" [] object_ (identity >> Decode.nullable)


{-| The name of this status context.
-}
context : Field String Github.Object.StatusContext
context =
    Object.fieldDecoder "context" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.StatusContext
createdAt =
    Object.fieldDecoder "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The actor who created this status context.
-}
creator : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.StatusContext
creator object_ =
    Object.selectionField "creator" [] object_ (identity >> Decode.nullable)


{-| The description for this status context.
-}
description : Field (Maybe String) Github.Object.StatusContext
description =
    Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.StatusContext
id =
    Object.fieldDecoder "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The state of this status context.
-}
state : Field Github.Enum.StatusState.StatusState Github.Object.StatusContext
state =
    Object.fieldDecoder "state" [] Github.Enum.StatusState.decoder


{-| The URL for this status context.
-}
targetUrl : Field (Maybe Github.Scalar.Uri) Github.Object.StatusContext
targetUrl =
    Object.fieldDecoder "targetUrl" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri |> Decode.nullable)
