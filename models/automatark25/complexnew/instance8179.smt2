(declare-const X String)
; ((mailto\:|(news|(ht|f)tp(s?))\://){1}\S+)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (str.to.re "mailto:") (re.++ (re.union (str.to.re "news") (re.++ (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")))) (str.to.re "://")))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
; configINTERNAL\.inikwdwww\x2Ewordiq\x2Ecomas\x2Estarware\x2Ecom
(assert (not (str.in.re X (str.to.re "configINTERNAL.inikwdwww.wordiq.com\x1bas.starware.com\x0a"))))
(check-sat)
