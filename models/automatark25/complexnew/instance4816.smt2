(declare-const X String)
; ^A-?|[BCD][+-]?|[SN]?F|W$
(assert (str.in_re X (re.union (re.++ (str.to_re "A") (re.opt (str.to_re "-"))) (re.++ (re.union (str.to_re "B") (str.to_re "C") (str.to_re "D")) (re.opt (re.union (str.to_re "+") (str.to_re "-")))) (re.++ (re.opt (re.union (str.to_re "S") (str.to_re "N"))) (str.to_re "F")) (str.to_re "W\u{a}"))))
; ^01[0-2]\d{8}$
(assert (str.in_re X (re.++ (str.to_re "01") (re.range "0" "2") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}ogx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogx/i\u{a}"))))
; /filename=[^\n]*\u{2e}plp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".plp/i\u{a}")))))
; www\u{2E}onetoolbar\u{2E}comcommunity
(assert (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}")))
(check-sat)
