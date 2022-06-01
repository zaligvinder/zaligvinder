(declare-const X String)
; addrwww\u{2E}trustedsearch\u{2E}comX-Mailer\u{3A}
(assert (not (str.in_re X (str.to_re "addrwww.trustedsearch.comX-Mailer:\u{13}\u{a}"))))
; ((FI|HU|LU|MT|SI)-?)?[0-9]{8}
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "FI") (str.to_re "HU") (str.to_re "LU") (str.to_re "MT") (str.to_re "SI")) (re.opt (str.to_re "-")))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
