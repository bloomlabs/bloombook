@Posts = new Mongo.Collection 'posts'

Posts.attachSchema new SimpleSchema
    title:
        type: String
    type:
        type: String
        # TODO Spec set membership <[ Blog, Status, Tutorial ]>
    userId:
        type: String
        # TODO Auto enforce
    content:
        type: String
        # Markdown
    tags:
        type: [String]
        # TODO Enforce tag set membership
    comments:
        type: [String]
        # TODO Threaded comments plus ownership
