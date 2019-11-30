from sanic import Sanic
from sanic.response import json

import graphene
from graphene.relay import Node, Connection, ConnectionField
from settings import app
from graphene_sqlalchemy import SQLAlchemyObjectType, SQLAlchemyConnectionFiel

from sanic_graphql import GraphQLView

app = Sanic()

app.add_route(GraphQLView.as_view(schema=Schema, graphiql=True), '/graphql')

# Optional, for adding batch query support (used in Apollo-Client)
app.add_route(GraphQLView.as_view(schema=Schema, batch=True), '/graphql/batch')


@app.route("/")
async def test(request):
    return json({"hello": "world"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
