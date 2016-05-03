if Posts.find().count() == 0
    posts = [
            title: 'This is a cool post'
            type: 'Status'
            userId: 'I don\'t exist'
            content: 'There is so much cool stuff going on in this post you don\'t even know'
            tags: ['cool', 'rad' ,'bitcoin']
            comments: [
                'This comment sucks'
                'Man these comments are bad'
            ]
        ,
            title: 'Lame post'
            type: 'Blog'
            userId: 'I don\'t exist'
            content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
            tags: ['lame', 'not-rad', 'lamecoin']
            comments: [
                'This comment sucks'
                'Man these comments are bad'
            ]
    ]

    Posts.insert post for post in posts


if Meteor.users.find().count() == 0
    users = [
            createdAt: Date.now()
            profile:
                name: 'Dylan Johnston'
                contact: '0447977904'
                # TODO Should be foreign key to startups collection
                startup: ['veri_vote']
                member: 'full_time'
                skills: [
                    'Skill 1'
                    'Skill 2'
                    'Skill 3'
                    'Skill 4'
                ]
                interests: [
                    'Interest 1'
                    'Interest 2'
                    'Interest 3'
                ]
                mentoring: 'No fuck you'
        ,
            createdAt: Date.now()
            profile:
                name: 'Ilyas Ridhuan'
                contact: '0469696969'
                # TODO Should be foreign key to startups collection
                startup: ['veri_vote']
                member: 'full_time'
                skills: [
                    'Lame Skill 1'
                    'Skill 1'
                    'Lame Skill 2'
                    'Skill 2'
                ]
                interests: [
                    'Interest 1'
                    'Interest 2'
                    'Interest 3'
                ]
                mentoring: 'Yeah sure'
    ]

    Meteor.users.insert user for users in users
