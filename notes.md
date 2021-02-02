# JBuilder

Jbuilder gives you a simple Domain Spedcific Language for declaring JSON structures that beats manipulating giant hash structures. This is particularly helpful when the generation process is fraught with conditionals and loops.

With Jbuilder, rails allows us to use our views folder to create JSON templates for our responses.

# Normalizing State

The basic concepts of normalizing data are:

- Each type of data gets its own "table" in the state.
- Each "data table" should store the individual items in an object, with the - IDs of the items as keys and the items themselves as the values.
- Any references to individual items should be done by storing the item's ID.
- Arrays of IDs should be used to indicate ordering.
