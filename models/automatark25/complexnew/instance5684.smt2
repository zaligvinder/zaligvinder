(declare-const X String)
; toolbar_domain_redirectlibManager\x2Edll\x5Eget
(assert (not (str.in.re X (str.to.re "toolbar_domain_redirectlibManager.dll^get\x0a"))))
; /\x2emp4([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.mp4") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
