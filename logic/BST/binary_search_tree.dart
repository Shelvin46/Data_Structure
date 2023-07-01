// import 'dart:html';

// import '../../binary_search_tree.dart';

void main() {
  insertion(25);
  insertion(20);
  insertion(36);
  insertion(22);
  insertion(30);
  insertion(40);
  insertion(10);
  insertion(5);
  insertion(12);
  insertion(38);
  insertion(48);
  insertion(39);
  removeElement(39);
  findLowestAndHighest();
  // print(contains(39));
  // inOrder();
}

class _BinarySearchNode {
  // _BinarySearchNode? root;
  _BinarySearchNode? left;
  _BinarySearchNode? right;
  dynamic data;
  _BinarySearchNode({required this.data});
}

_BinarySearchNode? root;
void insertion(dynamic data) {
  _BinarySearchNode newNode = _BinarySearchNode(data: data);
  _BinarySearchNode? currentNode = root;
  if (currentNode == null) {
    root = newNode;
    return;
  }
  while (true) {
    if (data < currentNode?.data) {
      if (currentNode?.left == null) {
        currentNode?.left = newNode;
        break;
      } else {
        currentNode = currentNode?.left;
      }
    } else {
      if (currentNode?.right == null) {
        currentNode?.right = newNode;
        break;
      } else {
        currentNode = currentNode?.right;
      }
    }
  }
}

bool contains(int data) {
  _BinarySearchNode? current = root;
  while (current != null) {
    if (data == current.data) {
      return true;
    } else if (data < current.data) {
      current = current.left;
    } else if (data > current.data) {
      current = current.right;
    }
  }
  return false;
}

void removeElement(dynamic data) {
  removeHelper(data, root, null);
}

removeHelper(
  dynamic data,
  _BinarySearchNode? currentNode,
  _BinarySearchNode? parent,
) {
  while (currentNode != null) {
    if (data < currentNode.data) {
      parent = currentNode.left;
      currentNode = currentNode.left;
    } else if (data > currentNode.data) {
      parent = currentNode;
      currentNode = currentNode.right;
    } else {
      if (currentNode.right != null && currentNode.left != null) {
        currentNode.data = getMinimumValue(currentNode.right!);
        removeHelper(currentNode.data, currentNode.right, parent);
      } else {
        if (parent == null) {
          if (currentNode.right == null) {
            root = currentNode.left;
          } else {
            root = currentNode.right;
          }
        } else {
          if (parent.left == currentNode) {
            if (currentNode.left == null) {
              parent.left = currentNode.right;
            } else {
              parent.left = currentNode.left;
            }
          } else if (parent.right == currentNode) {
            if (currentNode.right == null) {
              parent.right = currentNode.left;
            } else {
              parent.right = currentNode.right;
            }
          }
        }
      }
      break;
    }
  }
}

int getMinimumValue(_BinarySearchNode node) {
  if (node.left == null) {
    return node.data;
  } else {
    return getMinimumValue(node.left!);
  }
}

void inOrder() {
  inOrderHelper(root);
}

void preOrder() {
  preOrderHelper(root);
}

void postOrder() {
  postOrderHelper(root);
}

void inOrderHelper(_BinarySearchNode? node) {
  if (node != null) {
    inOrderHelper(node.left);
    print(node.data);
    inOrderHelper(node.right);
  }
}

void preOrderHelper(_BinarySearchNode? node) {
  if (node != null) {
    print(node.data);
    preOrderHelper(node.left);
    preOrderHelper(node.right);
  }
}

void postOrderHelper(_BinarySearchNode? node) {
  if (node != null) {
    postOrderHelper(node.left);
    postOrderHelper(node.right);
    print(node.data);
  }
}

void findLowestAndHighest() {
  _BinarySearchNode? forLowest = root;
  while (forLowest?.left != null) {
    forLowest = forLowest?.left;
  }
  print(forLowest?.data);
}
g