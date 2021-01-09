(declare-const X String)
; (([A-Z]{1,2}[0-9][0-9A-Z]?)\ ([0-9][A-Z]{2}))|(GIR\ 0AA)
(assert (str.in.re X (re.union (re.++ (str.to.re " ") ((_ re.loop 1 2) (re.range "A" "Z")) (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z"))) (str.to.re "GIR 0AA\x0a"))))
; [+-]*[0-9]+[,]*[0-9]*|[+-]*[0-9]*[,]+[0-9]*
(assert (str.in.re X (re.union (re.++ (re.* (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (re.* (str.to.re ",")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.union (str.to.re "+") (str.to.re "-"))) (re.* (re.range "0" "9")) (re.+ (str.to.re ",")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; Subject\x3Alinkautomatici\x2EcomReferer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "Subject:linkautomatici.comReferer:www.searchreslt.com\x0a"))))
; ^\d*[0-9](\.\d?[0-9])?$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.opt (re.range "0" "9")) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
