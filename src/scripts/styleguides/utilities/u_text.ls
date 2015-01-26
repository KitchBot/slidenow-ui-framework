React = require \react
{a, abbr, address, area, article, aside, audio, b, base, blockquote, br, button, canvas, caption, cite, code, col, colgroup, datalist, dd, del, details, dfn, dialog, div, dl, dt, em, fieldset, figcaption, figure, footer, form, h1, h2, h3, h4, h5, h6, header, hgroup, hr, i, iframe, img, input, ins, kbd, keygen, label, legend, li, link, main, map, mark, menu, menuitem, nav, object, ol, optgroup, option, p, q, section, select, span, strong, summary, table, tbody, td, textarea, tfoot, th, thead, time, title, tr, u, ul, video} = React.DOM

Router = require \react-router
{Link} = Router


u-text = React.createClass do
    render:->

        div null,
            h1 do
                className:'u-ta-l'
                'This is text align left'
            h1 do
                className:'u-ta-c'
                'This is text align center'
            h1 do
                className:'u-ta-r'
                'This is text align right'

            h1 do
                className:'u-td-n'
                'None Text'
            h1 do
                className:'u-td-u'
                'Underlined Text'
            h1 do
                className:'u-td-o'
                'Overline Text'
            h1 do
                className:'u-td-l'
                'Stricken Text'
            h1 do
                className:'u-td-b'
                'Blinking Text (may not work in your browser!)'

module.exports = u-text