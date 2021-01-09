(declare-const X String)
; ^([0-9]{6}[\s\-]{1}[0-9]{12}|[0-9]{18})$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 12 12) (re.range "0" "9"))) ((_ re.loop 18 18) (re.range "0" "9"))) (str.to.re "\x0a")))))
; /SOAPAction\x3a[^\r\n]*Get(ServerTime|FileList|File)\x22/i
(assert (str.in.re X (re.++ (str.to.re "/SOAPAction:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Get") (re.union (str.to.re "ServerTime") (str.to.re "FileList") (str.to.re "File")) (str.to.re "\x22/i\x0a"))))
(check-sat)
