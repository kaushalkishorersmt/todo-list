@TodoForm = React.createClass
    getInitialState: ->
      title: ''
      date: ''

    valid: ->
      @state.title && @state.date

    handleChange: (e) ->
      name = e.target.name
      @setState "#{ name }": e.target.value

    handleSubmit: (e) ->
      e.preventDefault()
      $.post '', { todo: @state }, (data) =>
        @props.handleNewRecord data
        @setState @getInitialState()
      , 'JSON'


    render: ->
      React.DOM.form
        className: 'form-inline'
        onSubmit: @handleSubmit
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Date'
            name: 'date'
            value: @state.date
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Title'
            name: 'title'
            value: @state.title
            onChange: @handleChange
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Create Todo'
