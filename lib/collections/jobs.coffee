@Jobs = new Mongo.Collection 'jobs'

Jobs.attachSchema new SimpleSchema
    title:
        type: String
    description:
        type: String
        # TODO support markdown
    skills:
        type: [String]
        # TODO enforce foreign key relation with skills?
    tags:
        type: [String]
        # TODO enforce foreign key relation with tags?
    compensation:
        type: String
        # TODO should there be seperation of equity vs pay?
        # Special category for slicing pie?
