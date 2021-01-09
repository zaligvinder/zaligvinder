(declare-const X String)
; trustyfiles\x2EcomBlade\x23\x23\x23\x23\.smx\?
(assert (str.in.re X (str.to.re "trustyfiles.comBlade####.smx?\x0a")))
; (.*\.jpe?g|.*\.JPE?G)
(assert (str.in.re X (re.++ (re.union (re.++ (re.* re.allchar) (str.to.re ".jp") (re.opt (str.to.re "e")) (str.to.re "g")) (re.++ (re.* re.allchar) (str.to.re ".JP") (re.opt (str.to.re "E")) (str.to.re "G"))) (str.to.re "\x0a"))))
; ^[\w_.]{5,12}$
(assert (str.in.re X (re.++ ((_ re.loop 5 12) (re.union (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; configINTERNAL\.inikwdwww\x2Ewordiq\x2Ecomas\x2Estarware\x2Ecom
(assert (not (str.in.re X (str.to.re "configINTERNAL.inikwdwww.wordiq.com\x1bas.starware.com\x0a"))))
; /filename=[^\n]*\x2eqt/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".qt/i\x0a")))))
(check-sat)
