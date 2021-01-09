(declare-const X String)
; (")([0-9]*)(",")([0-9]*)("\))
(assert (not (str.in.re X (re.++ (str.to.re "\x22") (re.* (re.range "0" "9")) (str.to.re "\x22,\x22") (re.* (re.range "0" "9")) (str.to.re "\x22)\x0a")))))
(check-sat)
