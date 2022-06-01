(declare-const X String)
; /filename=[^\n]*\u{2e}plf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".plf/i\u{a}"))))
; /\.php\?action=jv\&h=\d+/Ui
(assert (str.in_re X (re.++ (str.to_re "/.php?action=jv&h=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
; Softwarerequestedoffers\u{2E}bullseye-network\u{2E}com
(assert (str.in_re X (str.to_re "Softwarerequestedoffers.bullseye-network.com\u{a}")))
(check-sat)
