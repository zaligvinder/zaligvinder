(declare-const X String)
; User-Agent\u{3A}\dBarwww\u{2E}accoona\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.range "0" "9") (str.to_re "Barwww.accoona.com\u{a}"))))
(check-sat)
