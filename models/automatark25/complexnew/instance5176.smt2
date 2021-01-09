(declare-const X String)
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (not (str.in.re X (str.to.re "www.onetoolbar.comcommunity\x0a"))))
; (^([0-9]+[.]+[0-9]+)|(0)$)
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.+ (re.range "0" "9")) (re.+ (str.to.re ".")) (re.+ (re.range "0" "9"))) (str.to.re "0")) (str.to.re "\x0a")))))
; aohobygi\x2fzwiw\s+\+The\+password\+is\x3A
(assert (str.in.re X (re.++ (str.to.re "aohobygi/zwiw") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "+The+password+is:\x0a"))))
(check-sat)
