(declare-const X String)
; MyAgentprotocolprotocolHost\u{3A}\u{2F}s\u{28}robert\u{40}blackcastlesoft\u{2E}com\u{29}data2\.activshopper\.com
(assert (str.in_re X (str.to_re "MyAgentprotocolprotocolHost:/s(robert@blackcastlesoft.com)data2.activshopper.com\u{a}")))
(check-sat)
