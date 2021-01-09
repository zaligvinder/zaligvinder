(declare-const X String)
; /\x2empg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.mpg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2ejif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jif/i\x0a"))))
; search\.dropspam\.com.*SupportFiles.*Referer\x3A
(assert (str.in.re X (re.++ (str.to.re "search.dropspam.com") (re.* re.allchar) (str.to.re "SupportFiles\x13") (re.* re.allchar) (str.to.re "Referer:\x0a"))))
(check-sat)
