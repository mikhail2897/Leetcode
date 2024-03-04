class Solution(object):
    def twoSum(self, nums, target):

        h_map = {}
        for index, number in enumerate(nums):
            difference = target - number
            
            if difference in h_map:
                return [h_map[difference], index]
            
            h_map[number] = index
        