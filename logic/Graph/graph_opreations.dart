import 'dart:collection';
// import 'dart:html';

void main() {
  Graph graph = Graph();
  graph.insert(vertex: 5, edge: 9, isBidirectional: false);
  graph.insert(vertex: 5, edge: 7, isBidirectional: true);
  graph.insert(vertex: 5, edge: 8, isBidirectional: false);
  graph.insert(vertex: 8, edge: 20, isBidirectional: false);
  graph.insert(vertex: 8, edge: 11, isBidirectional: true);
  graph.insert(vertex: 20, edge: 10, isBidirectional: false);
  graph.insert(vertex: 11, edge: 7, isBidirectional: false);
  graph.insert(vertex: 9, edge: 10, isBidirectional: false);
  // graph.remove(8);
  graph.display();
  print("BFS");
  graph.bfs(5);
  print("DFS");
  graph.dfs(5);
  // graph
}

class Graph {
  Map<int, List<int>> map = HashMap();
  void insert(
      {required int vertex, required int edge, required bool isBidirectional}) {
    if (!map.containsKey(vertex)) {
      addVertex(vertex);
    }
    if (!map.containsKey(edge)) {
      addVertex(edge);
    }
    map[vertex]?.add(edge);
    if (isBidirectional) {
      map[edge]?.add(vertex);
    }
  }

  void addVertex(int data) {
    map[data] = [];
  }

  void display() {
    for (int x in map.keys) {
      String result = x.toString() + " -> ";
      for (int y in map[x]!) {
        result = result + y.toString() + " ";
      }
      print(result);
    }
  }

  void remove(int data) {
    if (map.containsKey(data)) {
      for (var key in map.keys) {
        var values = map[key];
        if (values != null) {
          values.remove(data);
        }
      }
      map.remove(data);
    }
  }

  void bfs(int startVertex) {
    Set<int> visited = {};
    Queue<int> queue = Queue();
    visited.add(startVertex);
    queue.add(startVertex);
    while (!queue.isEmpty) {
      int currentVertex = queue.removeFirst();
      print(currentVertex);
      for (var edge in map[currentVertex]!) {
        if (!visited.contains(edge)) {
          queue.add(edge);
          visited.add(edge);
        }
      }

      if (queue.isEmpty) {
        for (var vertex in map.keys) {
          if (!visited.contains(vertex)) {
            queue.add(vertex);
            visited.add(vertex);
            break;
          }
        }
      }
    }
  }

  void dfs(int startVertex) {
    Set<int> visited = {};
    dfsHelper(startVertex, visited);
  }

  void dfsHelper(int startVertex, Set<int> visited) {
    visited.add(startVertex);
    print(startVertex);
    for (var edge in map[startVertex]!) {
      if (!visited.contains(edge)) {
        dfsHelper(edge, visited);
      }
    }
    for (var key in map.keys) {
      if (!visited.contains(key)) {
        dfsHelper(key, visited);
        break;
      }
    }
  }
}
