(declare-const X String)
; freeIPaddrsRunner\+The\+password\+is\x3A
(assert (not (str.in.re X (str.to.re "freeIPaddrsRunner+The+password+is:\x0a"))))
; /outerhtml\s*?\+\=\s*?\x22/i
(assert (not (str.in.re X (re.++ (str.to.re "/outerhtml") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "+=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22/i\x0a")))))
; ^\\w*$
(assert (not (str.in.re X (re.++ (str.to.re "\x5c") (re.* (str.to.re "w")) (str.to.re "\x0a")))))
(check-sat)
