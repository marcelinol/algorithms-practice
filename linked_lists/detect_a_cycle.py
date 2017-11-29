# Linked Lists: Detect a Cycle
# https://www.hackerrank.com/challenges/ctci-linked-list-cycle/problem

def has_cycle(head):
	if head is None:
		return False

	slow = head
	fast = head.next
	while fast != None && current fast.next != slow:
		slow = slow.next
		fast = fast.next
	if fast is None:
		return False
	return True