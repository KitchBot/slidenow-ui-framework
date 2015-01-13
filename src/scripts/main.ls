React = require \react
Router = require('react-router')
{Route,DefaultRoute,RouteHandler,NotFoundRoute,Redirect,Link,HistoryLocation} = Router

mainPage = require './pages/mainPage.ls'
desktop = require './pages/desktop/index.ls'
mobile = require './pages/mobile/index.ls'



routes = 
    Route do
        name:'main'
        path:'/'
        handler:mainPage
        Route do
            name:'desktop'
            handler:desktop
        Route do
            name:'mobile'
            handler:mobile
        
            #Route {path:\:selectId , name:\select ,handler:BookDetial}'}
        #Route {name:\BooksCart , handler:'{BooksCart}'},
        #DefaultRoute do
        #    handler:index
        #NotFoundRoute {handler:'{NotFound}'},
        Redirect do
            from:'index.html' 
            to:'desktop'
  
Router.run routes, HistoryLocation, (Handler)->
    React.render Handler(), document.getElementById('app')
