class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  @override
  String toString() {
    String result = "";
    ListNode? node = this;
    while (node != null) {
      result += node.val.toString();
      node = node.next;
    }
    return result;
  }
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    // check if params are null
    if (l1 == null) {
      return l2;
    } else if (l2 == null) {
      return l1;
    }

    // get the numbers from the list nodes
    BigInt l1Num = BigInt.parse(parseToString(l1));
    BigInt l2Num = BigInt.parse(parseToString(l2));

    // get the sum of the two numbers
    final String result = (l1Num + l2Num).toString();

    // return the result as a list node
    return parseToListNode(result);
  }

  String parseToString(ListNode? node) {
    String result = "";
    while (node != null) {
      result += node.val.toString() + result;
      node = node.next;
    }
    return result;
  }

  ListNode parseToListNode(String numStr) {
    List<ListNode> nodeList = [];

    for (String i in numStr.split('')) {
      nodeList.insert(0, ListNode(int.parse(i)));
    }

    for (int i = 0; i < nodeList.length - 1; i++) {
      nodeList[i].next = nodeList[i + 1];
    }

    return nodeList[0];
  }
}

void main(List<String> arguments) {
  final Solution solution = Solution();

  final ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));
  final ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));

  final ListNode? result = solution.addTwoNumbers(l1, l2);

  print(result);
}
