(declare-const X String)
; Host\u{3A}.*client\u{2E}baigoo\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "client.baigoo.com\u{a}")))))
(check-sat)
