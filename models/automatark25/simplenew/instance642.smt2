(declare-const X String)
; IDENTIFY.*\/cgi-bin\/PopupV.*Host\x3Asearchreslt
(assert (str.in.re X (re.++ (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "/cgi-bin/PopupV") (re.* re.allchar) (str.to.re "Host:searchreslt\x0a"))))
(check-sat)
