(declare-const X String)
; url\(['"]?([\w\d_\-\. ]+)['"]?\)
(assert (str.in.re X (re.++ (str.to.re "url(") (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (re.+ (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ".") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re ")\x0a"))))
(check-sat)
