(declare-const X String)
; IndyHost\u{3A}GirlFriendReferer\u{3A}
(assert (not (str.in_re X (str.to_re "IndyHost:GirlFriendReferer:\u{a}"))))
; search\.dropspam\.com.*pjpoptwql\u{2f}rlnj
(assert (not (str.in_re X (re.++ (str.to_re "search.dropspam.com") (re.* re.allchar) (str.to_re "pjpoptwql/rlnj\u{a}")))))
(check-sat)
