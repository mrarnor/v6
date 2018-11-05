import bottle
import beaker
from sys import argv
from bottle import *
from beaker.middleware import SessionMiddleware

session_opts = {
    "session.type": "file",
    "session.data_dir": "./data",
    "session.cookie_expires": 500,
    "session.auto": True
}
app = SessionMiddleware(app(), session_opts)

vara = [
    {"name": 'Hoodie', "price": "20"},{"name": 'Hoodie', "price": "20"},{"name": "sweeter", "price": "80"},{"name": "sweeter", "price": "80"},{"name": "Jacket", "price": "40"},{"name": "Jacket", "price": "40"},]


@route("/static/<skra>")
def static_skrar(skra):
    return static_file(skra, root="./static/")



@route('/')
def index():
    return template("index.tpl")



@route("/cart/<id>")
def add(id):
    bs = request.environ.get('beaker.session')
    bs[id] = 'check'
    bs.save()
    redirect("/")


@route("/cart")
def cart():
    bs = request.environ.get('beaker.session')
    return template("cart", val=vara)


@route("/del/<id>")
def radera(id):
    bs = request.environ.get('beaker.session')
    bs[id] = None
    redirect("/cart")


@route("/delall")
def radera(id):
    bs = request.environ.get('beaker.session')
    bs.delete()
    bs.save()
    redirect("/cart")


@error(404)
def villa(error):
    return "<pre>Error</pre>"


try:
    run(host="0.0.0.0", port=os.environ.get('PORT'))
except:
    run(debug=True, app=app)