Meteor.publish 'posts', -> Posts.find()

Meteor.publish 'users', ->
    Meteor.users.find {},
        fields:
            profile: 1
