(declare-const X String)
; Host\x3A1\-extreme\x2EbizX-Mailer\x3awww\x2Ewebcruiser\x2Ecc
(assert (not (str.in.re X (str.to.re "Host:1-extreme.bizX-Mailer:\x13www.webcruiser.cc\x0a"))))
; User-Agent\x3aUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a")))
; (^(4|5)\d{3}-?\d{4}-?\d{4}-?\d{4}|(4|5)\d{15})|(^(6011)-?\d{4}-?\d{4}-?\d{4}|(6011)-?\d{12})|(^((3\d{3}))-\d{6}-\d{5}|^((3\d{14})))
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "-") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "3") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "3") ((_ re.loop 14 14) (re.range "0" "9")))) (str.to.re "\x0a")) (re.++ (re.union (str.to.re "4") (str.to.re "5")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to.re "4") (str.to.re "5")) ((_ re.loop 15 15) (re.range "0" "9"))) (re.++ (str.to.re "6011") (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "6011") (re.opt (str.to.re "-")) ((_ re.loop 12 12) (re.range "0" "9"))))))
; \{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}
(assert (not (str.in.re X (re.++ (str.to.re "{") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "}\x0a")))))
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (str.in.re X (str.to.re "Handyst=ClassStopperHost:SpamBlockerUtility\x0a")))
(check-sat)
