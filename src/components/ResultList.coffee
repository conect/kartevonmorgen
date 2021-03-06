# Copyright (c) 2015 Markus Kohlhase <mail@markus-kohlhase.de>

React   = require "react"
Actions = require "../Actions"
Pure    = require "react-pure-render/mixin"
Address = require "./AddressLine"

{ NAMES, CSS_CLASSES } = require "../constants/Categories"

{ div, ul, li, p, span } = React.DOM

ResultListElement = React.createClass

  displayName: "ResultListElement"

  mixins: [Pure]

  render: ->
    { highlight, entry, } = @props
    { onClick, onMouseEnter, onMouseLeave } = @props
    clz = if highlight then 'highlight-entry ' else ''
    clz += CSS_CLASSES[entry.categories?[0]]
    li
      className     : clz
      onClick       : (ev) -> ev.preventDefault(); onClick      entry.id
      onMouseEnter  : (ev) -> ev.preventDefault(); onMouseEnter entry.id
      onMouseLeave  : (ev) -> ev.preventDefault(); onMouseLeave entry.id
      div null,
        span className: "category", NAMES[entry.categories?[0]]
      div null,
        span className: "title", entry.title
      div null,
        span className: "subtitle", entry.description
      if entry.street or entry.zip or entry.city
        React.createElement Address, entry

module.exports = React.createClass

  displayName: "ResultList"

  mixins: [Pure]

  render: ->
    { entries, highlight } = @props
    results = for e in entries
      React.createElement ResultListElement,
        entry       : e
        key         : e.id,
        highlight   : e.id in highlight
        onClick     : @props.onClick
        onMouseEnter: @props.onMouseEnter
        onMouseLeave: @props.onMouseLeave

    div className: "result-list",
      if results.length > 0
        ul null, results
      else
        p className: "no-results",
          "Es konnten keine Einträge gefunden werden :("
