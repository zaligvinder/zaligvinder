(declare-const X String)
; /bbdd(host|user|passwd)=\x22[^\s]*?([\x60\x3b\x7c]|\x24\x28)/i
(assert (not (str.in.re X (re.++ (str.to.re "/bbdd") (re.union (str.to.re "host") (str.to.re "user") (str.to.re "passwd")) (str.to.re "=\x22") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "$(") (str.to.re "`") (str.to.re ";") (str.to.re "|")) (str.to.re "/i\x0a")))))
(check-sat)
