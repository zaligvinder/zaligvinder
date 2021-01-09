(declare-const X String)
; /[^/]+$
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.comp (str.to.re "/"))) (str.to.re "\x0a")))))
; ^([A-Z]{0,3}?[0-9]{9}($[0-9]{0}|[A-Z]{1}))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 0 3) (re.range "A" "Z")) ((_ re.loop 9 9) (re.range "0" "9")) (re.union ((_ re.loop 0 0) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")))))))
; /\x2eskm([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.skm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
