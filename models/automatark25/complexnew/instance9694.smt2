(declare-const X String)
; ((0|1[0-9]{0,2}|2[0-9]?|2[0-4][0-9]|25[0-5]|[3-9][0-9]?)\.){3}(0|1[0-9]{0,2}|2[0-9]?|2[0-4][0-9]|25[0-5]|[3-9][0-9]?)
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (str.to.re "0") (re.++ (str.to.re "1") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.range "3" "9") (re.opt (re.range "0" "9")))) (str.to.re "."))) (re.union (str.to.re "0") (re.++ (str.to.re "1") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.range "3" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x0a"))))
; adblock\x2Elinkz\x2Ecomwww\.iggsey\.comHost\x3A
(assert (not (str.in.re X (str.to.re "adblock.linkz.comwww.iggsey.comHost:\x0a"))))
; ^07([\d]{3})[(\D\s)]?[\d]{3}[(\D\s)]?[\d]{3}$
(assert (not (str.in.re X (re.++ (str.to.re "07") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "(") (re.comp (re.range "0" "9")) (str.to.re ")") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "(") (re.comp (re.range "0" "9")) (str.to.re ")") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
