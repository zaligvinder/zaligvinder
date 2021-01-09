(declare-const X String)
; ^(1[89]|[2-9]\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "8") (str.to.re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /\/[a-f0-9]{32}\/[a-f0-9]{32}\x22/R
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x22/R\x0a"))))
(check-sat)
