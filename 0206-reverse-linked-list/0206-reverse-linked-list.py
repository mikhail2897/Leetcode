# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def reverseList(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        pre = None
        curr = head
        next_p = None

        while curr:
            next_p = curr.next
            curr.next = pre

            pre = curr
            curr = next_p

        return pre
        

        