(declare-const X String)
; www\x2Ewebcruiser\x2Eccgot
(assert (not (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a"))))
; username=(.*)&password=(.*)
(assert (not (str.in.re X (re.++ (str.to.re "username=") (re.* re.allchar) (str.to.re "&password=") (re.* re.allchar) (str.to.re "\x0a")))))
; /SOAPAction\x3a[^\r\n]*Get(ServerTime|FileList|File)\x22/i
(assert (str.in.re X (re.++ (str.to.re "/SOAPAction:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Get") (re.union (str.to.re "ServerTime") (str.to.re "FileList") (str.to.re "File")) (str.to.re "\x22/i\x0a"))))
(check-sat)
