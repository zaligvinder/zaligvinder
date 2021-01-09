(declare-const X String)
; ^\d+$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2es3m([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.s3m") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; (\{\\f\d*)\\([^;]+;)
(assert (not (str.in.re X (re.++ (str.to.re "\x5c\x0a{\x5cf") (re.* (re.range "0" "9")) (re.+ (re.comp (str.to.re ";"))) (str.to.re ";")))))
; /\x3F[0-9a-z]{32}D/U
(assert (not (str.in.re X (re.++ (str.to.re "/?") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "D/U\x0a")))))
(check-sat)
