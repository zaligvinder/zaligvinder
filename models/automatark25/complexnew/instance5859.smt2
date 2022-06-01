(declare-const X String)
; MSNLOGOVNUsertooffers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (str.to_re "MSNLOGOVNUsertooffers.bullseye-network.com\u{a}"))))
; /filename=[^\n]*\u{2e}url/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".url/i\u{a}")))))
(check-sat)
