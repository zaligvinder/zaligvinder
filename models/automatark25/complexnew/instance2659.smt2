(declare-const X String)
; Minutes\s+\u{2F}cgi\u{2F}logurl\.cgi\s+e2give\.com
(assert (str.in_re X (re.++ (str.to_re "Minutes") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "e2give.com\u{a}"))))
; ActMonHost\u{3A}BossUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "ActMonHost:BossUser-Agent:\u{a}")))
(check-sat)
