(declare-const X String)
; Host\u{3A}\dKeylogger.*Onetrustyfiles\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Keylogger") (re.* re.allchar) (str.to_re "Onetrustyfiles.com\u{a}"))))
(check-sat)
