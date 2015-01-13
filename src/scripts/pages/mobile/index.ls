React = require \react
{table, thead, tbody, tr, th, td, input, div, button, span ,header, h1,section} = React.DOM


mobileIndex = React.createClass do
    render:->
                
        div do
            className:'index'
            header do 
                className:'hd'
                h1 do
                    className:'hd_logo u-fl-l'
                    "H1"                

            section null,
                div null,
                    'I\m Mobiles Page'
        

module.exports = mobileIndex