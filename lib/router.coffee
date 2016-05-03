Router.configure
    layoutTemplate: 'main'
    loadingTemplate: 'loading'
    notFoundTempalte: 'not_found'

Router.route '/users/:_id',
    name: 'user_page',
    subscriptions: -> Meteor.users.findOne @params._id

Router.route '/',
    name: 'home'
    subscriptions: -> [
        Meteor.subscribe 'posts'
        Meteor.subscribe 'users'
    ]

Router.onBeforeAction ->
    unless Meteor.user()
        if Meteor.logginIn()
            @render @loadingTemplate
        else
            @render 'access_denied'
    else
        @next()
, except: ['home']
