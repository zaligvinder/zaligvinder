(declare-const X String)
; .*[Pp]re[Ss\$]cr[iI1]pt.*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "P") (str.to.re "p")) (str.to.re "re") (re.union (str.to.re "S") (str.to.re "s") (str.to.re "$")) (str.to.re "cr") (re.union (str.to.re "i") (str.to.re "I") (str.to.re "1")) (str.to.re "pt") (re.* re.allchar) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2es3m/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".s3m/i\x0a")))))
(check-sat)
