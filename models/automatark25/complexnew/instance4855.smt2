(declare-const X String)
; configINTERNAL\.inikwdwww\u{2E}wordiq\u{2E}comas\u{2E}starware\u{2E}com
(assert (str.in_re X (str.to_re "configINTERNAL.inikwdwww.wordiq.com\u{1b}as.starware.com\u{a}")))
; ^(([0-2])?([0-9]))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.range "0" "2")) (re.range "0" "9"))))
; AD\s+c\.goclick\.com\w+asdbiz\u{2E}bizfrom\u{7c}roogoo\u{7c}Current
(assert (not (str.in_re X (re.++ (str.to_re "AD") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "c.goclick.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.bizfrom|roogoo|Current\u{a}")))))
(check-sat)
