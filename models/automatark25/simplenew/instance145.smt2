(declare-const X String)
; User-Agent\x3A\s+ocllceclbhs\x2fgthNeed2Find
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gthNeed2Find\x0a")))))
(check-sat)
