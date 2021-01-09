(declare-const X String)
; ^(\d)?[ ]*[\(\.\-]?(\d{3})[\)\.\-]?[ ]*(\d{3})[\.\- ]?(\d{4})[ ]*(x|ext\.?)?[ ]*(\d{1,7})?$
(assert (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.union (str.to.re "(") (str.to.re ".") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ")") (str.to.re ".") (str.to.re "-"))) (re.* (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.union (str.to.re "x") (re.++ (str.to.re "ext") (re.opt (str.to.re "."))))) (re.* (str.to.re " ")) (re.opt ((_ re.loop 1 7) (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^([A-Za-z]\d[A-Za-z][-]?\d[A-Za-z]\d)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (str.to.re "-")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9")))))
; Host\x3AHANDYwww\x2Epurityscan\x2Ecom
(assert (str.in.re X (str.to.re "Host:HANDYwww.purityscan.com\x0a")))
; ^[A][Z](.?)[0-9]{4}$
(assert (not (str.in.re X (re.++ (str.to.re "AZ") (re.opt re.allchar) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
