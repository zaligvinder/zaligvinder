(declare-const X String)
; SPY\s\u{5B}StaticHost\u{3A}FROM\u{3A}cs\u{2E}shopperreports\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "SPY") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "[StaticHost:FROM:cs.shopperreports.com\u{a}"))))
; Host\u{3A}toUser-Agent\u{3A}ClientsConnected-
(assert (not (str.in_re X (str.to_re "Host:toUser-Agent:ClientsConnected-\u{a}"))))
(check-sat)
