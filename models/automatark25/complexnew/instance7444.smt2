(declare-const X String)
; [a-zA-Z0-9]*
(assert (str.in_re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; action\u{2E}IP-FTPsearch\.dropspam\.com
(assert (str.in_re X (str.to_re "action.IP-FTPsearch.dropspam.com\u{a}")))
(check-sat)
