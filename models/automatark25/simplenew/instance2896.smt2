(declare-const X String)
; ^([A-Z]+\s*[A-Z]+)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.range "A" "Z")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "A" "Z"))))))
(check-sat)
