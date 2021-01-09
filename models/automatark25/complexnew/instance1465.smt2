(declare-const X String)
; IndyHost\x3AGirlFriendReferer\x3A
(assert (not (str.in.re X (str.to.re "IndyHost:GirlFriendReferer:\x0a"))))
; search\.dropspam\.com.*pjpoptwql\x2frlnj
(assert (not (str.in.re X (re.++ (str.to.re "search.dropspam.com") (re.* re.allchar) (str.to.re "pjpoptwql/rlnj\x0a")))))
(check-sat)
