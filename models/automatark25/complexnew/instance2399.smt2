(declare-const X String)
; ^((0[1-9])|(1[0-2]))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "\x0a")))))
; ^(A[A-HJ-M]|[BR][A-Y]|C[A-HJ-PR-V]|[EMOV][A-Y]|G[A-HJ-O]|[DFHKLPSWY][A-HJ-PR-Y]|MAN|N[A-EGHJ-PR-Y]|X[A-F]|)(0[02-9]|[1-9][0-9])[A-HJ-P-R-Z]{3}$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to.re "B") (str.to.re "R")) (re.range "A" "Y")) (re.++ (str.to.re "C") (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "V"))) (re.++ (re.union (str.to.re "E") (str.to.re "M") (str.to.re "O") (str.to.re "V")) (re.range "A" "Y")) (re.++ (str.to.re "G") (re.union (re.range "A" "H") (re.range "J" "O"))) (re.++ (re.union (str.to.re "D") (str.to.re "F") (str.to.re "H") (str.to.re "K") (str.to.re "L") (str.to.re "P") (str.to.re "S") (str.to.re "W") (str.to.re "Y")) (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "Y"))) (str.to.re "MAN") (re.++ (str.to.re "N") (re.union (re.range "A" "E") (str.to.re "G") (str.to.re "H") (re.range "J" "P") (re.range "R" "Y"))) (re.++ (str.to.re "X") (re.range "A" "F"))) (re.union (re.++ (str.to.re "0") (re.union (str.to.re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9"))) ((_ re.loop 3 3) (re.union (re.range "A" "H") (re.range "J" "P") (str.to.re "-") (re.range "R" "Z"))) (str.to.re "\x0a"))))
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "HWPE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Basic") (re.* re.allchar) (str.to.re "LOGsearches.worldtostart.com\x0a")))))
; (^3[47])((\d{11}$)|(\d{13}$))
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 13 13) (re.range "0" "9"))) (str.to.re "\x0a3") (re.union (str.to.re "4") (str.to.re "7"))))))
; /\/AES\d+O\d+\.jsp\?[a-z0-9=\x2b\x2f]{20}/iU
(assert (str.in.re X (re.++ (str.to.re "//AES") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iU\x0a"))))
(check-sat)
