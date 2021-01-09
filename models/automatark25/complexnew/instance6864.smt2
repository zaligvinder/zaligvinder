(declare-const X String)
; /\x2elzh([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.lzh") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\/index\d{9}\.asp/i
(assert (str.in.re X (re.++ (str.to.re "//index") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re ".asp/i\x0a"))))
(check-sat)
