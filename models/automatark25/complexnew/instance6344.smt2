(declare-const X String)
; /^\/lists\/\d{20}$/U
(assert (str.in.re X (re.++ (str.to.re "//lists/") ((_ re.loop 20 20) (re.range "0" "9")) (str.to.re "/U\x0a"))))
; /\x2eppsx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.ppsx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
