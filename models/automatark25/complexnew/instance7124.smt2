(declare-const X String)
; FTP.*www\x2Ewordiq\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "FTP") (re.* re.allchar) (str.to.re "www.wordiq.com\x1b\x0a")))))
; Host\x3a\s+hostiedesksearch\.dropspam\.com\x2Fbi\x2Fservlet\x2FThinstall
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostiedesksearch.dropspam.com/bi/servlet/Thinstall\x0a")))))
; for\sinternalcyber@yahoo\x2EcomHeadersRedirectionHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "for") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirectionHost:\x0a")))))
(check-sat)
