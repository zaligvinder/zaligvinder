(declare-const X String)
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (str.in.re X (re.++ (str.to.re "Authorization:") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin\x0a"))))
; /filename=[^\n]*\x2ep2g/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".p2g/i\x0a"))))
; adserver\.warezclient\.com\s+URLBlaze\s+Host\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "adserver.warezclient.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlaze") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:\x0a")))))
; ^[^\\\/\?\*\"\'\>\<\:\|]*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re "?") (str.to.re "*") (str.to.re "\x22") (str.to.re "'") (str.to.re ">") (str.to.re "<") (str.to.re ":") (str.to.re "|"))) (str.to.re "\x0a"))))
(check-sat)
