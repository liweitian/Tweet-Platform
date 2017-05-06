This is a simple Twitter database application.

Including User, Twitte, Follower, Like and Privatespace.

User and Twitte is in one-to-many relation.(Table Twitte will record this)
User and Twitte also have a relation called Like which is a many-to-many relation
User and Privatespace is in one-to-one relation.
Follower and Followed is in many-to-many relation. (This will be recorded in table Follower)

Privatespace is used for a user to write diary. Users can select its own space's layout.
User can keep this space public or private or showing to some friends. (More details will be added)

Generally, for a simple database, I have implemented all possible relations.

The validates can be seen in each model.
Some other Table such as Friend, PublicNewsStation may be added due to workload.
PublicNewsStation is a unique user. It will publish daily news to all its followers. 
Its Privatespace can always be accessed by its followers.
