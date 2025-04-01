/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    List<int> resultStack = [];
    if (head == null) {
        return null;
    }
    // result.val = head!.val;
    ListNode? nextNode = head.next;
    while (nextNode != null) {
        resultStack.add(nextNode.val);
        nextNode = nextNode.next;
    }

    ListNode result = ListNode(resultStack.removeLast());
    ListNode pointer = result;
    while(resultStack.isNotEmpty) {
        pointer.next = ListNode(resultStack.removeLast());
        pointer = pointer.next!;
    }
    
    return result;
    
  }
}
