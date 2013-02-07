enron-email-index
=================

A project to build a local, searchable index of the Enron email evidence database

## Work in progress

# Data
The email data is designed to be parsed into a trie-like graph, where each node
is represented by FSTokenNode, containing the string key, a set of filenames
that contain that key, and a dictionary keyed with the next characters, mapping
to pointers to the next node.

# Writing
It's intended that the trie, after built in-memory, is segmented during archiving
(possibly at a given node depth). Each file created would be of the name of the root key,
e.g. if node "bo" was designated at the max depth for a single tree, it would populate
its suffixTable dictionary with FSTokenFile objects, containing a filename of
the continuation node, e.g. "boa.dat".

# Reading
When traversing the tree beginning from the unarchived root node, coming across
a FSTokenFile class requires an intermediate un-archival step before continuing.
This process needs to be careful not to keep older nodes in memory during traversal.

# Python
When adopting this codebase to other data sources, it might be advantageous to use
Python to build the initial data structure, using the objc bridge module.
http://packages.python.org/pyobjc/api/module-objc.html#archiving-python-and-objective-c-objects
