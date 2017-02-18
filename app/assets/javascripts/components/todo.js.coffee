@Todos = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.date
      React.DOM.td null, @props.title
