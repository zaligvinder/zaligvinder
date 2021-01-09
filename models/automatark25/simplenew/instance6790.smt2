(declare-const X String)
; \d[\d\,\.]+
(assert (str.in.re X (re.++ (re.range "0" "9") (re.+ (re.union (re.range "0" "9") (str.to.re ",") (str.to.re "."))) (str.to.re "\x0a"))))
(check-sat)
