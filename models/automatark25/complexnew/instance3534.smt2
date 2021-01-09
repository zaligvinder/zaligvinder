(declare-const X String)
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a")))
; Days\s+HWAE\s+Host\x3APortawww\.thecommunicator\.net
(assert (not (str.in.re X (re.++ (str.to.re "Days") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Portawww.thecommunicator.net\x0a")))))
; url\(['"]?([\w\d_\-\. ]+)['"]?\)
(assert (str.in.re X (re.++ (str.to.re "url(") (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (re.+ (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ".") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re ")\x0a"))))
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "PASSW=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/ta/NEWS/") (re.* re.allchar) (str.to.re "loomcompany.com\x0a")))))
(check-sat)
