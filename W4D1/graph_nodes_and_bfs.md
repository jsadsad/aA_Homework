# GraphNodes and BFS
First, construct a GraphNode class. Creating a node should give us access to its value and the nodes to which it connects us - in the case of a bidirectional graph, this will be all its neighbors. For any given node, we should be able to add a neighboring node.

class GraphNode

end
Remember this graph from the readings?

graph

You can now build it using your new GraphNode class.

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
Let's write a breadth-first search, making sure to keep track not just of the queue, but of all the nodes we've visited so far. If you find the target_value return the node with that value, and if no node is found return nil.

def bfs(starting_node, target_value)

end
Now that we have a node class that can search in any direction, we have to be careful about the way we search graphs. Before, in a unidirectional tree, we could safely remove a node from our consideration once we had checked its value - there was no way a parent node could be linked back to itself by a child node. Now, though, anything goes - our graph could link back on itself and catch us in a loop if we're not careful!

You should be able to return the GraphNode with the value of "b" by running:

  bfs(a, "b")
Good job!

Now try running:

  bfs(a, "f")
Did you get caught in an infinite loop? Look at the graph visualization and see why. There is no way Node A can access Node F with the way this graph is setup. Think about how you could utilize a Set in order to keep track of the nodes you've visited. You only want your bfs method to continue as long as it is encountering new nodes. Try running bfs(a, "f") again until the method returns nil.

For fun you can now try creating and traversing some new graphs of your own!
