class Solution(object):
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
        map1 = {')': '(', '}': '{', ']': '['}
        stack = []

        for char in s:
            if char in map1:
                if stack and stack[-1] == map1[char]:
                    stack.pop()
                else:
                    return False
                
            else:
                stack.append(char)

        if stack:
            return False
        else:
            return True