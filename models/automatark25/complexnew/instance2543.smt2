(declare-const X String)
; /User-Agent\x3A\s+?mus[\x0d\x0a]/iH
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "mus") (re.union (str.to.re "\x0d") (str.to.re "\x0a")) (str.to.re "/iH\x0a"))))
; YOUR.*\x2Fsearchfast\x2F\s+hostiedesksearch\.dropspam\.com\x2Fbi\x2Fservlet\x2FThinstall
(assert (str.in.re X (re.++ (str.to.re "YOUR") (re.* re.allchar) (str.to.re "/searchfast/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostiedesksearch.dropspam.com/bi/servlet/Thinstall\x0a"))))
(check-sat)
