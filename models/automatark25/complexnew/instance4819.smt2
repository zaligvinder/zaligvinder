(declare-const X String)
; User-Agent\x3a\stoWebupdate\.cgi
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toWebupdate.cgi\x0a"))))
; (^\d{5}-\d{3}|^\d{2}.\d{3}-\d{3}|\d{8})
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 8 8) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
