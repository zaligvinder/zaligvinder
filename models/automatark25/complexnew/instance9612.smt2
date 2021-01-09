(declare-const X String)
; Host\x3A\s+Online\s+ocllceclbhs\x2fgth
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth\x0a")))))
; /\x2elzh([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.lzh") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x2ehta([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.hta") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
