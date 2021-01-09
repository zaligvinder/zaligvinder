(declare-const X String)
; /^GET\x20\/plus\x2easp\?[^\r\n]*?query=[a-z0-9+\/]{2,40}@{0,2}/i
(assert (not (str.in.re X (re.++ (str.to.re "/GET /plus.asp?") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "query=") ((_ re.loop 2 40) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) ((_ re.loop 0 2) (str.to.re "@")) (str.to.re "/i\x0a")))))
; ^([1][0-9]|[0-9])[1-9]{2}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "\x0a")))))
; ^[a-zA-Z]{3}[0-9]{6}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
