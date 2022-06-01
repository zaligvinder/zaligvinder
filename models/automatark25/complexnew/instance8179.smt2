(declare-const X String)
; ((mailto\:|(news|(ht|f)tp(s?))\://){1}\S+)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 1 1) (re.union (str.to_re "mailto:") (re.++ (re.union (str.to_re "news") (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")))) (str.to_re "://")))) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))))
; configINTERNAL\.inikwdwww\u{2E}wordiq\u{2E}comas\u{2E}starware\u{2E}com
(assert (not (str.in_re X (str.to_re "configINTERNAL.inikwdwww.wordiq.com\u{1b}as.starware.com\u{a}"))))
(check-sat)
