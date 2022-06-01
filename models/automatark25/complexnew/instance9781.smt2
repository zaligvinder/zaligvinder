(declare-const X String)
; Theef2offers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (str.to_re "Theef2offers.bullseye-network.com\u{a}"))))
; /filename=[^\n]*\u{2e}png/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".png/i\u{a}"))))
; /^\u{2f}[0-9a-f]+$/iU
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "/iU\u{a}")))))
; \d{5,12}|\d{1,10}\.\d{1,10}\.\d{1,10}|\d{1,10}\.\d{1,10}
(assert (not (str.in_re X (re.union ((_ re.loop 5 12) (re.range "0" "9")) (re.++ ((_ re.loop 1 10) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 10) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 10) (re.range "0" "9"))) (re.++ ((_ re.loop 1 10) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 10) (re.range "0" "9")) (str.to_re "\u{a}"))))))
(check-sat)
