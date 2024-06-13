class Solution(object):
    def isPalindrome(self, s):
        """
        :type s: str
        :rtype: bool
        """
        lst = [char.lower() for char in s if char.isalnum()]

        l, r = 0, len(lst) - 1

        while l < r:
            if lst[l] != lst[r]:
                return False
            l +=1
            r -=1
        
        return True
        