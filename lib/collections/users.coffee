Meteor.users.attachSchema new SimpleSchema
    createdAt:
        type: Date
        # TODO autovalue now
    services:
        type: Object
        optional: true
        blackbox: true
        # TODO be explicit with schema
    profile:
        type: new SimpleSchema
            name:
                type: String
            contact:
                type: String
                optional: true
                # TODO enforce phone / email?
            startup:
                type: [String]
                optional: true
                # TODO enforce foreign key with startups
                # TODO make array, support multiple startups
            member:
                type: String
                optional: true
                # TODO enforce relationship with heroku database
            skills:
                type: [String]
                optional: true
                # TODO encforce set membership with skills
            interests:
                type: [String]
                optional: true
                # TODO enforce set membership with interests
                # Or should this be a free variable with semantic relationships via word2vec
            mentoring:
                type: String
                optional: true
                # TODO what should this be? Skill mentoring, amount of hours? true false?
