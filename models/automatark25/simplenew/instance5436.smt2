(declare-const X String)
; SecureNet\s+hostiedesksearch\.dropspam\.com
(assert (not (str.in.re X (re.++ (str.to.re "SecureNet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostiedesksearch.dropspam.com\x0a")))))
(check-sat)
