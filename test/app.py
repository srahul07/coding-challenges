from flask import Flask,request
from flask_restful import Resource,Api

app = Flask(__name__)
api = Api(app)

todos = {'1': "Say hello"}

class HelloWorld(Resource):
    def get(self):
        return {'msg': 'Hello, World War 3'}

class Todo(Resource):
    def get(self, todo_id):
        return {todo_id: todos[todo_id]}

    def put(self,todo_id):
        todos[todo_id] : request.form['data']
        return {todo_id: todos[todo_id]}

api.add_resource(HelloWorld,'/')
api.add_resource(Todo,'/<string:todo_id>')

if __name__ == '__main__':
    app.run(debug=True)
