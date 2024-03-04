class Solution(object):
    def containsDuplicate(self, nums):
        map_nums = set()
        for number in nums:
            if number in map_nums:
                return True
            map_nums.add(number)
        return False
        