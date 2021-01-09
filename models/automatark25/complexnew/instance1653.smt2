(declare-const X String)
; IDENTIFY.*\/cgi-bin\/PopupV.*Host\x3Asearchreslt
(assert (str.in.re X (re.++ (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "/cgi-bin/PopupV") (re.* re.allchar) (str.to.re "Host:searchreslt\x0a"))))
; ^([a-zA-Z0-9-\,\s]{2,64})$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 64) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re ",") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
