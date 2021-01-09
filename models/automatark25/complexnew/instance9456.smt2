(declare-const X String)
; ^[a-zA-Z]([a-zA-Z0-9])*([\.][a-zA-Z]([a-zA-Z0-9])*)*$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re "\x0a"))))
; /^\x2f[0-9a-z]{30}$/Umi
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/Umi\x0a")))))
; .*[Pp]re[Ss\$]cr[iI1]pt.*
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "P") (str.to.re "p")) (str.to.re "re") (re.union (str.to.re "S") (str.to.re "s") (str.to.re "$")) (str.to.re "cr") (re.union (str.to.re "i") (str.to.re "I") (str.to.re "1")) (str.to.re "pt") (re.* re.allchar) (str.to.re "\x0a"))))
; addrwww\x2Etrustedsearch\x2EcomX-Mailer\x3A
(assert (str.in.re X (str.to.re "addrwww.trustedsearch.comX-Mailer:\x13\x0a")))
(check-sat)
