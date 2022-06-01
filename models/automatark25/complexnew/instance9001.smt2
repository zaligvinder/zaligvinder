(declare-const X String)
; Host\u{3A}.*rt[^\n\r]*Host\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "rt") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:\u{a}")))))
; \u{22}Thewebsearch\.getmirar\.com
(assert (str.in_re X (str.to_re "\u{22}Thewebsearch.getmirar.com\u{a}")))
; /^User-Agent\u{3A}[^\r\n]*TT-Bot/mi
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "TT-Bot/mi\u{a}")))))
; Host\u{3A}toUser-Agent\u{3A}ClientsConnected-
(assert (str.in_re X (str.to_re "Host:toUser-Agent:ClientsConnected-\u{a}")))
(check-sat)
