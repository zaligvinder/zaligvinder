(declare-const X String)
; /\x2ej2k([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.j2k") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /^\/[-\w]{70,78}==?$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 70 78) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.opt (str.to.re "=")) (str.to.re "/U\x0a"))))
(check-sat)
