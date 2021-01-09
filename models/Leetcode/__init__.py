def getTrackData (bname = None):
    import models.Leetcode.addBinary
    import models.Leetcode.addStrings
    import models.Leetcode.backspaceCompare
    import models.Leetcode.canWin
    import models.Leetcode.compress
    import models.Leetcode.countSegments
    import models.Leetcode.findAnagrams
    import models.Leetcode.findLadders
    import models.Leetcode.findSubstring
    import models.Leetcode.findTheDifference
    import models.Leetcode.generatePossibleNextMoves
    import models.Leetcode.getHint
    import models.Leetcode.groupStrings
    import models.Leetcode.isAlienSorted
    import models.Leetcode.isAnagram
    import models.Leetcode.isInterleave
    import models.Leetcode.isIsomorphic
    import models.Leetcode.isMatch
    import models.Leetcode.isNumber
    import models.Leetcode.isOneEditDistance
    import models.Leetcode.isScramble
    import models.Leetcode.lengthLongestPath
    import models.Leetcode.lengthOfLastWord
    import models.Leetcode.lengthOfLongestSubstring
    import models.Leetcode.lengthOfLongestSubstringKDistinct
    import models.Leetcode.lengthOfLongestSubstringTwoDistinct
    import models.Leetcode.letterCombinations
    import models.Leetcode.licenseKeyFormatting
    import models.Leetcode.longestCommonPrefix
    import models.Leetcode.minCut
    import models.Leetcode.minWindow
    import models.Leetcode.myAtoi
    import models.Leetcode.numJewelsInStones
    import models.Leetcode.numUniqueEmails
    import models.Leetcode.partition
    import models.Leetcode.restoreIpAddresses
    import models.Leetcode.shortestDistance
    import models.Leetcode.simplifyPath
    import models.Leetcode.subdomainVisits
    import models.Leetcode.validPalindrome
    import models.Leetcode.validWordAbbreviation
    import models.Leetcode.validWordSquare
    import models.Leetcode.wordPattern
    res = []
    for k in [
    		  models.Leetcode.addBinary,
    		  models.Leetcode.addStrings,
    		  models.Leetcode.backspaceCompare,
    		  models.Leetcode.canWin,
    		  models.Leetcode.compress,
    		  models.Leetcode.countSegments,
    		  models.Leetcode.findAnagrams,
    		  models.Leetcode.findLadders,
    		  models.Leetcode.findSubstring,
    		  models.Leetcode.findTheDifference,
    		  models.Leetcode.generatePossibleNextMoves,
    		  models.Leetcode.getHint,
    		  models.Leetcode.groupStrings,
    		  models.Leetcode.isAlienSorted,
    		  models.Leetcode.isAnagram,
    		  models.Leetcode.isInterleave,
    		  models.Leetcode.isIsomorphic,
    		  models.Leetcode.isMatch,
    		  models.Leetcode.isNumber,
    		  models.Leetcode.isOneEditDistance,
    		  models.Leetcode.isScramble,
    		  models.Leetcode.lengthLongestPath,
    		  models.Leetcode.lengthOfLastWord,
    		  models.Leetcode.lengthOfLongestSubstring,
    		  models.Leetcode.lengthOfLongestSubstringKDistinct,
    		  models.Leetcode.lengthOfLongestSubstringTwoDistinct,
    		  models.Leetcode.letterCombinations,
    		  models.Leetcode.licenseKeyFormatting,
    		  models.Leetcode.longestCommonPrefix,
    		  models.Leetcode.minCut,
    		  models.Leetcode.minWindow,
    		  models.Leetcode.myAtoi,
    		  models.Leetcode.numJewelsInStones,
    		  models.Leetcode.numUniqueEmails,
    		  models.Leetcode.partition,
    		  models.Leetcode.restoreIpAddresses,
    		  models.Leetcode.shortestDistance,
    		  models.Leetcode.simplifyPath,
    		  models.Leetcode.subdomainVisits,
    		  models.Leetcode.validPalindrome,
    		  models.Leetcode.validWordAbbreviation,
    		  models.Leetcode.validWordSquare,
    		  models.Leetcode.wordPattern,
              ]:
        res = res+k.getTrackData (bname or "Leetcode")
    return res
