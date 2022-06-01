(declare-const X String)
; Web-Mail\s+\u{2F}cgi\u{2F}logurl\.cgi.*SurveillanceHost\u{3a}
(assert (str.in_re X (re.++ (str.to_re "Web-Mail") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cgi/logurl.cgi") (re.* re.allchar) (str.to_re "Surveillance\u{13}Host:\u{a}"))))
(check-sat)
