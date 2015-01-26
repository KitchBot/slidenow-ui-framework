React = require \react
{a, abbr, address, area, article, aside, audio, b, base, blockquote, br, button, canvas, caption, cite, code, col, colgroup, datalist, dd, del, details, dfn, dialog, div, dl, dt, em, fieldset, figcaption, figure, footer, form, h1, h2, h3, h4, h5, h6, header, hgroup, hr, i, iframe, img, input, ins, kbd, keygen, label, legend, li, link, main, map, mark, menu, menuitem, nav, object, ol, optgroup, option, p, q, section, select, span, strong, summary, table, tbody, td, textarea, tfoot, th, thead, time, title, tr, u, ul, video} = React.DOM

Router = require \react-router
{Link} = Router

dsk__all-slides = React.createClass do
    render:->
        
        div null,

            div do
                className:'all-slides'
                nav do
                    className:'nav-box'
                    a do
                        className:'e-btn'
                        i do
                            className:'icon-all-slides'
                            span null,
                                'All Slides'
                    a do
                        className:'e-btn'
                        i do
                            className:'icon-fav'
                            span null,
                                'Favorite Slides'
                    a do
                        className:'e-btn'
                        i do
                            className:'icon-follow'
                            span null,
                                'Following Slides'
                    a do
                        className:'e-btn'
                        i do
                            className:'icon-help'
                            span null,
                                'Help'

            div do
                className:'main-ct'

                div do
                    className:'thumb'
                    a do
                        className:'thumb__link'



                        




            div do
                className:'bg-box'
                div do
                    className:'bg-box__img'
                    style:
                        background-image: "url('images/desktop/bg-imgs/bg-index.jpg')"

                div do
                    className:'bg-box__op-block'



module.exports = dsk__all-slides