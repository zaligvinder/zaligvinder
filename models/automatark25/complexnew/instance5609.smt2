(declare-const X String)
; rank\u{2E}toolbarbrowser\u{2E}comlnzzlnbk\u{2f}pkrm\.fin
(assert (not (str.in_re X (str.to_re "rank.toolbarbrowser.comlnzzlnbk/pkrm.fin\u{a}"))))
; ^(([0-9]|1[0-9]|2[0-4])(\.[0-9][0-9]?)?)$|([2][5](\.[0][0]?)?)$
(assert (not (str.in_re X (re.union (re.++ (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4"))) (re.opt (re.++ (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9"))))) (re.++ (str.to_re "\u{a}25") (re.opt (re.++ (str.to_re ".0") (re.opt (str.to_re "0")))))))))
(check-sat)
