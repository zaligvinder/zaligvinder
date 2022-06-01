(declare-const X String)
; e2give\.com.*Redirector\u{22}.*Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "e2give.com") (re.* re.allchar) (str.to_re "Redirector\u{22}") (re.* re.allchar) (str.to_re "Host:\u{a}"))))
; SPY\s\u{5B}StaticHost\u{3A}FROM\u{3A}cs\u{2E}shopperreports\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "SPY") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "[StaticHost:FROM:cs.shopperreports.com\u{a}")))))
(check-sat)
