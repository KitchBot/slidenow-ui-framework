React = require \react
Router = require \react-router
{Link,RouteHandler} = Router
{header, table, thead, tbody, tr, th, td, input, div, button, span, ul, li, a} = React.DOM

require('../../sass/mobile.sass')
mainPage = React.createClass do
  render:->
    RouteHandler null

module.exports = mainPage