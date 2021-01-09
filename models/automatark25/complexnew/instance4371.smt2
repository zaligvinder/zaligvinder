(declare-const X String)
; HWAE\s+\x2Fta\x2FNEWS\x2FGuptacharloomcompany\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/ta/NEWS/Guptacharloomcompany.com\x0a")))))
; jquery\-(\d|\.)*\.min\.js
(assert (str.in.re X (re.++ (str.to.re "jquery-") (re.* (re.union (re.range "0" "9") (str.to.re "."))) (str.to.re ".min.js\x0a"))))
(check-sat)
