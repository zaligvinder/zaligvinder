(declare-const X String)
; ^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[A-Za-z]{1}\d{1}[A-Za-z]{1}\d{1}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (str.to.re "J") (str.to.re "K") (str.to.re "L") (str.to.re "M") (str.to.re "N") (str.to.re "P") (str.to.re "R") (str.to.re "S") (str.to.re "T") (str.to.re "V") (str.to.re "X") (str.to.re "Y") (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "e") (str.to.re "g") (str.to.re "h") (str.to.re "j") (str.to.re "k") (str.to.re "l") (str.to.re "m") (str.to.re "n") (str.to.re "p") (str.to.re "r") (str.to.re "s") (str.to.re "t") (str.to.re "v") (str.to.re "x") (str.to.re "y"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a"))))
; /^\x2f[a-z\x2d\x5f]{90,97}\.php$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 90 97) (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_"))) (str.to.re ".php/U\x0a"))))
; User-Agent\x3Aupgrade\x2Eqsrch\x2Einfo
(assert (not (str.in.re X (str.to.re "User-Agent:upgrade.qsrch.info\x0a"))))
; ^[a-zA-Z][a-zA-Z0-9_]+$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
