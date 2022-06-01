(declare-const X String)
; ^\d{5}$|^\d{5}-\d{4}$
(assert (str.in_re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^\$( )*\d*(.\d{1,2})?$
(assert (str.in_re X (re.++ (str.to_re "$") (re.* (str.to_re " ")) (re.* (re.range "0" "9")) (re.opt (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; configINTERNAL\.inikwdwww\u{2E}wordiq\u{2E}comas\u{2E}starware\u{2E}com
(assert (str.in_re X (str.to_re "configINTERNAL.inikwdwww.wordiq.com\u{1b}as.starware.com\u{a}")))
(check-sat)
