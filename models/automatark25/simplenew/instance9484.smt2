(declare-const X String)
; /^\/\/?[a-z0-9_]{7,8}\/\??[0-9a-f]{60,68}[\x3b\x2c\d+]*$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.opt (str.to.re "/")) ((_ re.loop 7 8) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "/") (re.opt (str.to.re "?")) ((_ re.loop 60 68) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to.re ";") (str.to.re ",") (re.range "0" "9") (str.to.re "+"))) (str.to.re "/U\x0a"))))
(check-sat)
