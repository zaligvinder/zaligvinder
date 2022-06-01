(declare-const X String)
; Theef2offers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (str.to_re "Theef2offers.bullseye-network.com\u{a}"))))
; (^(6011)\d{12}$)|(^(65)\d{14}$)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "6011") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}65") ((_ re.loop 14 14) (re.range "0" "9")))))))
; /filename=[^\n]*\u{2e}psd/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".psd/i\u{a}")))))
(check-sat)
