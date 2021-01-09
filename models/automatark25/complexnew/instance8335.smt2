(declare-const X String)
; \x18\x16\dsearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (str.in.re X (re.++ (str.to.re "\x18\x16") (re.range "0" "9") (str.to.re "search.conduit.com<logs@logs.com>\x0a"))))
; ^\d[0-9]*[-/]\d[0-9]*$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.* (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "/")) (re.range "0" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
