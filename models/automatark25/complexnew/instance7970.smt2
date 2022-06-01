(declare-const X String)
; /\u{2e}wmv([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wmv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\/loader\.cpl$/U
(assert (not (str.in_re X (str.to_re "//loader.cpl/U\u{a}"))))
; iz=Referer\u{3A}offers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (str.to_re "iz=Referer:offers.bullseye-network.com\u{a}"))))
(check-sat)
