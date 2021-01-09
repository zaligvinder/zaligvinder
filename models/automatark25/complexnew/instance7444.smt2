(declare-const X String)
; [a-zA-Z0-9]*
(assert (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; action\x2EIP-FTPsearch\.dropspam\.com
(assert (str.in.re X (str.to.re "action.IP-FTPsearch.dropspam.com\x0a")))
(check-sat)
