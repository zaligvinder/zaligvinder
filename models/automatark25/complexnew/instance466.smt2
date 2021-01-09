(declare-const X String)
; ^.{0,0}
(assert (str.in.re X (re.++ ((_ re.loop 0 0) re.allchar) (str.to.re "\x0a"))))
; YOUR.*\x2Fsearchfast\x2F\s+hostiedesksearch\.dropspam\.com\x2Fbi\x2Fservlet\x2FThinstall
(assert (str.in.re X (re.++ (str.to.re "YOUR") (re.* re.allchar) (str.to.re "/searchfast/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostiedesksearch.dropspam.com/bi/servlet/Thinstall\x0a"))))
(check-sat)
