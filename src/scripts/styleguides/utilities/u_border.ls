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


u-border = React.createClass do
    render:->
        div do
            null

            div do
                className:'u-bds-n'
                style:style
                p null, 'none'

            div do
                className:'u-bds-h'
                style:style
                p null, 'hidden'

            div do
                className:'u-bds-dt'
                style:style
                p null, 'dotted'

            div do
                className:'u-bds-s'
                style:style
                p null, 'solid'

            div do
                className:'u-bds-db'
                style:style
                p null, 'double'

            div do
                className:'u-bds-dd'
                style:style
                p null, 'dot-dash'

            div do
                className:'u-bds-g'
                style:style
                p null, 'groove'

            div do
                className:'u-bds-r'
                style:style
                p null, 'ridge'

            div do
                className:'u-bds-i'
                style:style
                p null, 'inset'

            div do
                className:'u-bds-o'
                style:style
                p null, 'outset'


module.exports = u-border