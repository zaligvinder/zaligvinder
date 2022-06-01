(declare-const X String)
; (.*)-----(BEGIN|END)([^-]*)-----(.*)
(assert (str.in_re X (re.++ (re.* re.allchar) (str.to_re "-----") (re.union (str.to_re "BEGIN") (str.to_re "END")) (re.* (re.comp (str.to_re "-"))) (str.to_re "-----") (re.* re.allchar) (str.to_re "\u{a}"))))
(check-sat)
