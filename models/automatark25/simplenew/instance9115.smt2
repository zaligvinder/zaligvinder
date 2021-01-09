(declare-const X String)
; \w.+(\n\t.+){0,}
(assert (not (str.in.re X (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.+ re.allchar) (re.* (re.++ (str.to.re "\x0a\x09") (re.+ re.allchar))) (str.to.re "\x0a")))))
(check-sat)
