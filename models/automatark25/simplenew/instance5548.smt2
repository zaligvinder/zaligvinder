(declare-const X String)
; /SOAPAction\x3a[^\r\n]*Get(ServerTime|FileList|File)\x22/i
(assert (not (str.in.re X (re.++ (str.to.re "/SOAPAction:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Get") (re.union (str.to.re "ServerTime") (str.to.re "FileList") (str.to.re "File")) (str.to.re "\x22/i\x0a")))))
(check-sat)
