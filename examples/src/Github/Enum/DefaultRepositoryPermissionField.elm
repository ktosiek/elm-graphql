-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.DefaultRepositoryPermissionField exposing (DefaultRepositoryPermissionField(..), decoder, toString)

import Json.Decode as Decode exposing (Decoder)


{-| The possible default permissions for organization-owned repositories.

  - Read - Members have read access to org repos by default
  - Write - Members have read and write access to org repos by default
  - Admin - Members have read, write, and admin access to org repos by default

-}
type DefaultRepositoryPermissionField
    = Read
    | Write
    | Admin


decoder : Decoder DefaultRepositoryPermissionField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "READ" ->
                        Decode.succeed Read

                    "WRITE" ->
                        Decode.succeed Write

                    "ADMIN" ->
                        Decode.succeed Admin

                    _ ->
                        Decode.fail ("Invalid DefaultRepositoryPermissionField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : DefaultRepositoryPermissionField -> String
toString enum =
    case enum of
        Read ->
            "READ"

        Write ->
            "WRITE"

        Admin ->
            "ADMIN"
