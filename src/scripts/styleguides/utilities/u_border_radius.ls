React = require \react
{a, abbr, address, area, article, aside, audio, b, base, blockquote, br, button, canvas, caption, cite, code, col, colgroup, datalist, dd, del, details, dfn, dialog, div, dl, dt, em, fieldset, figcaption, figure, footer, form, h1, h2, h3, h4, h5, h6, header, hgroup, hr, i, iframe, img, input, ins, kbd, keygen, label, legend, li, link, main, map, mark, menu, menuitem, nav, object, ol, optgroup, option, p, q, section, select, span, strong, summary, table, tbody, td, textarea, tfoot, th, thead, time, title, tr, u, ul, video} = React.DOM

Router = require \react-router
{Link} = Router


style = 
    border-width: '3px'
    width: '125px'
    height: '125px'
    background: '#40c4ff'
    margin: '20px'
    float: 'left'
    padding: '5px'
    

u-border-radius = React.createClass do
    render:->
        div null,

            div do
                className:'u-bdrs-50p'
                style:style
                p null,
                    'radius-50%'

            div do
                className:'u-bdrs-0'
                style:style
                p null,
                    'radius-0'

            div do
                className:'u-bdrs-2'
                style:style
                p null,
                    'radius-2'

            div do
                className:'u-bdrs-4'
                style:style
                p null,
                    'radius-4'

            div do
                className:'u-bdrs-6'
                style:style
                p null,
                    'radius-6'

            div do
                className:'u-bdrs-8'
                style:style
                p null,
                    'radius-8'

            div do
                className:'u-bdrs-10'
                style:style
                p null,
                    'radius-10'

            div do
                className:'u-bdrs-12'
                style:style
                p null,
                    'radius-12'

            div do
                className:'u-bdrs-14'
                style:style
                p null,
                    'radius-14'

            div do
                className:'u-bdrs-16'
                style:style
                p null,
                    'radius-16'

            div do
                className:'u-bdrs-18'
                style:style
                p null,
                    'radius-18'

            div do
                className:'u-bdrs-20'
                style:style
                p null,
                    'radius-20'

            div do
                className:'u-bdrs-22'
                style:style
                p null,
                    'radius-22'

            div do
                className:'u-bdrs-24'
                style:style
                p null,
                    'radius-24'


module.exports = u-border-radius