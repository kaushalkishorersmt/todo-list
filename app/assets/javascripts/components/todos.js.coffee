@Todos = React.createClass
  getInitialState: ->
    todos: @props.data
  getDefaultProps: ->
    todos: []
  render: ->
    React.DOM.div
      className: 'todos'
      React.DOM.h2
        className: 'title'
        'Todos'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Date'
            React.DOM.th null, 'Title'
        React.DOM.tbody null,
          for record in @state.todos
              React.DOM.tr null,
                React.DOM.td null, record.date
                React.DOM.td null, record.title
