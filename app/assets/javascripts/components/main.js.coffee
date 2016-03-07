@Users = React.createClass
    getInitialState: ->
        users: @props.data
    getDefaultProps: ->
        users:[]
    render: ->
        React.DOM.div
            className: 'users'
            React.DOM.h2
                className: "title"
                "Users Here"
            React.DOM.table
                className: 'someTable'
                React.DOM.thead null
                    React.DOM.tr null,
                        React.DOM.th null, "Username"
                        React.DOM.th null, "Name"
                    React.DOM.tbody null,
                        for user in @state.users
                            React.createElement User, key: user.id, user: user