(declare-const X String)
; [DJF]{1}[0-9]{5,8}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "D") (str.to.re "J") (str.to.re "F"))) ((_ re.loop 5 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2epui([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pui") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
