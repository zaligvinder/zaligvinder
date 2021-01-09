(declare-const X String)
; rank\x2Etoolbarbrowser\x2Ecomlnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (str.to.re "rank.toolbarbrowser.comlnzzlnbk/pkrm.fin\x0a"))))
; ^(([0-9]|1[0-9]|2[0-4])(\.[0-9][0-9]?)?)$|([2][5](\.[0][0]?)?)$
(assert (not (str.in.re X (re.union (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.opt (re.range "0" "9"))))) (re.++ (str.to.re "\x0a25") (re.opt (re.++ (str.to.re ".0") (re.opt (str.to.re "0")))))))))
(check-sat)
