-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.GitHubMetadata exposing (gitHubServicesSha, gitIpAddresses, hookIpAddresses, importerIpAddresses, isPasswordAuthenticationVerifiable, pagesIpAddresses, selection)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.GitHubMetadata
selection constructor =
    Object.selection constructor


{-| Returns a String that's a SHA of `github-services`
-}
gitHubServicesSha : Field String Github.Object.GitHubMetadata
gitHubServicesSha =
    Object.fieldDecoder "gitHubServicesSha" [] Decode.string


{-| IP addresses that users connect to for git operations
-}
gitIpAddresses : Field (Maybe (List String)) Github.Object.GitHubMetadata
gitIpAddresses =
    Object.fieldDecoder "gitIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| IP addresses that service hooks are sent from
-}
hookIpAddresses : Field (Maybe (List String)) Github.Object.GitHubMetadata
hookIpAddresses =
    Object.fieldDecoder "hookIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| IP addresses that the importer connects from
-}
importerIpAddresses : Field (Maybe (List String)) Github.Object.GitHubMetadata
importerIpAddresses =
    Object.fieldDecoder "importerIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| Whether or not users are verified
-}
isPasswordAuthenticationVerifiable : Field Bool Github.Object.GitHubMetadata
isPasswordAuthenticationVerifiable =
    Object.fieldDecoder "isPasswordAuthenticationVerifiable" [] Decode.bool


{-| IP addresses for GitHub Pages' A records
-}
pagesIpAddresses : Field (Maybe (List String)) Github.Object.GitHubMetadata
pagesIpAddresses =
    Object.fieldDecoder "pagesIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)
