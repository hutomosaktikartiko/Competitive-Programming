class BinarySearchTree {
  final Node root;

  BinarySearchTree(String rootData) : root = Node(rootData);

  void _insert(String data, Node node) {
    if (data.compareTo(node.data) <= 0) {
      if (node.left == null) {
        node.left = Node(data);

        return;
      } else {
        _insert(data, node.left!);
      }
    } else {
      if (node.right == null) {
        node.right = Node(data);

        return;
      } else {
        _insert(data, node.right!);
      }
    }
  }

  void insert(String data) {
    _insert(data, root);
  }

  Iterable<String?> _traverse(Node? node) sync* {
    if (node == null) {
      yield null;
    } else {
      _traverse(node.left);
      yield node.data;
      _traverse(node.right);
    }
  }

  List<String> get sortedData {
    return _traverse(root).where((e) => e != null).toList() as List<String>;
  }
}

class Node {
  final String data;
  Node? left;
  Node? right;

  Node(this.data);
}
