(declare-const X String)
; .*[Pp]re[Ss\$]cr[iI1]pt.*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "P") (str.to.re "p")) (str.to.re "re") (re.union (str.to.re "S") (str.to.re "s") (str.to.re "$")) (str.to.re "cr") (re.union (str.to.re "i") (str.to.re "I") (str.to.re "1")) (str.to.re "pt") (re.* re.allchar) (str.to.re "\x0a")))))
; ^([0-9]*|\d*\.\d{1}?\d*)$
(assert (not (str.in.re X (re.++ (re.union (re.* (re.range "0" "9")) (re.++ (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a")))))
; /\x2eavi([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.avi") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; comLOGUser-Agent\x3Aistsvcwww\x2Eoemji\x2EcomSystemSleuth
(assert (str.in.re X (str.to.re "comLOGUser-Agent:istsvcwww.oemji.comSystemSleuth\x13\x0a")))
(check-sat)
