(declare-const X String)
; ^A-?|[BCD][+-]?|[SN]?F|W$
(assert (str.in.re X (re.union (re.++ (str.to.re "A") (re.opt (str.to.re "-"))) (re.++ (re.union (str.to.re "B") (str.to.re "C") (str.to.re "D")) (re.opt (re.union (str.to.re "+") (str.to.re "-")))) (re.++ (re.opt (re.union (str.to.re "S") (str.to.re "N"))) (str.to.re "F")) (str.to.re "W\x0a"))))
; ^01[0-2]\d{8}$
(assert (str.in.re X (re.++ (str.to.re "01") (re.range "0" "2") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eogx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogx/i\x0a"))))
; /filename=[^\n]*\x2eplp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".plp/i\x0a")))))
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (str.in.re X (str.to.re "www.onetoolbar.comcommunity\x0a")))
(check-sat)
