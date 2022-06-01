(declare-const X String)
; sql.*badurl\u{2E}grandstreetinteractive\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "sql") (re.* re.allchar) (str.to_re "badurl.grandstreetinteractive.com\u{a}")))))
(check-sat)
