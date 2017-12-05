module Api.Object.PullRequestReviewConnection exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.PullRequestReviewConnection
build constructor =
    Object.object constructor


edges : Object edges Api.Object.PullRequestReviewEdge -> FieldDecoder (List edges) Api.Object.PullRequestReviewConnection
edges object =
    Object.listOf "edges" [] object


nodes : Object nodes Api.Object.PullRequestReview -> FieldDecoder (List nodes) Api.Object.PullRequestReviewConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : Object pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.PullRequestReviewConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.PullRequestReviewConnection
totalCount =
    Field.fieldDecoder "totalCount" [] Decode.int
