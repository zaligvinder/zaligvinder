(declare-const X String)
; /\/stat_d\/$/U
(assert (str.in.re X (str.to.re "//stat_d//U\x0a")))
; (DK-?)?([0-9]{2}\ ?){3}[0-9]{2}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "DK") (re.opt (str.to.re "-")))) ((_ re.loop 3 3) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (str.to.re "J") (str.to.re "K") (str.to.re "L") (str.to.re "M") (str.to.re "N") (str.to.re "P") (str.to.re "R") (str.to.re "S") (str.to.re "T") (str.to.re "V") (str.to.re "X") (str.to.re "Y"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")) (re.* (str.to.re " ")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
; PL\d{2}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}|PL\d{26}
(assert (str.in.re X (re.++ (str.to.re "PL") (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 26 26) (re.range "0" "9")) (str.to.re "\x0a"))))))
; Port\x2E[^\n\r]*007\d+Logsdl\x2Eweb-nexus\x2Enet
(assert (str.in.re X (re.++ (str.to.re "Port.") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "007") (re.+ (re.range "0" "9")) (str.to.re "Logsdl.web-nexus.net\x0a"))))
(check-sat)
