(declare-const X String)
; ^(010|011|012)[0-9]{7}$
(assert (not (str.in.re X (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a01") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2"))))))
; /\x2ejpeg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jpeg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
