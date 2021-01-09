(declare-const X String)
; ^(9\d{2})([ \-]?)([7]\d|8[0-8])([ \-]?)(\d{4})$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.union (re.++ (str.to.re "7") (re.range "0" "9")) (re.++ (str.to.re "8") (re.range "0" "8"))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a9") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
