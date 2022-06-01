(declare-const X String)
; .*[Pp]re[Ss\$]cr[iI1]pt.*
(assert (not (str.in_re X (re.++ (re.* re.allchar) (re.union (str.to_re "P") (str.to_re "p")) (str.to_re "re") (re.union (str.to_re "S") (str.to_re "s") (str.to_re "$")) (str.to_re "cr") (re.union (str.to_re "i") (str.to_re "I") (str.to_re "1")) (str.to_re "pt") (re.* re.allchar) (str.to_re "\u{a}")))))
(check-sat)
