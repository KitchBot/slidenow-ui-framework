React = require \react
{table, thead, tbody, tr, th, td, input, div, button, span} = React.DOM
Router =require \react-router
{Link} = Router

mobileInfo = React.createClass do
  render:->
    div null,
        div null,'I\m Mobile Info Page'
        Link {to:'desktop'}, 'desktop'

module.exports = mobileInfo