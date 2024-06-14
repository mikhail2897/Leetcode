class Solution(object):
    def isAnagram(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        if len(s) != len(t):
            return False

        print(s,t)
        
        dict1 = {}

        for idx in range(len(s)):
            if s[idx] not in dict1:
                dict1[s[idx]] = 1
            else:
                dict1[s[idx]] += 1
            
            if t[idx] not in dict1:
                dict1[t[idx]] = -1
            else:
                dict1[t[idx]] -= 1
        
        print(dict1)

        for val in dict1.values():
            if val != 0:
                return False

        return True
