@Startups = new Mongo.Collection 'startups'

Startups.attachSchema new SimpleSchema
    name:
        type: String
    members:
        type: [String]
        # TODO enforce foreign key with users
    founders:
        type: [String]
        # TODO enforce foreign key with uers
    tags:
        type: [String]
    logo:
        type: String
        # TODO enforce asset association
    website:
        type: String
        # TODO enforce proper formatting
    jobs:
        type: [String]
        # TODO enforce foreign key with Jobs
