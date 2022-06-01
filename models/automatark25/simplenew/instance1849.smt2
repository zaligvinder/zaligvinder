(declare-const X String)
; \u{2F}cgi\u{2F}logurl\.cgi\s+Host\u{3A}User-Agent\u{3A}Surveillancecom
(assert (str.in_re X (re.++ (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:Surveillance\u{13}com\u{a}"))))
(check-sat)
