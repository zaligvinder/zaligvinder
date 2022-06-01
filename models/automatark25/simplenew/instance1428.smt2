(declare-const X String)
; \u{2F}cgi\u{2F}logurl\.cgi\s+IDENTIFY.*max-www\u{2E}u88\u{2E}cn
(assert (not (str.in_re X (re.++ (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "max-www.u88.cn\u{a}")))))
(check-sat)
