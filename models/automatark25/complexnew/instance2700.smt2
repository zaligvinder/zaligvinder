(declare-const X String)
; ^[0-3][0-9][0-1]\d{3}-\d{4}?
(assert (str.in.re X (re.++ (re.range "0" "3") (re.range "0" "9") (re.range "0" "1") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; url=http\x3A\s+jsp[^\n\r]*serverHOST\x3ASubject\x3Ai\-femdom\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "url=http:\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jsp") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "serverHOST:Subject:i-femdom.com\x0a"))))
; /ID3\x03\x00.{5}([TW][A-Z]{3}|COMM)/smi
(assert (not (str.in.re X (re.++ (str.to.re "/ID3\x03\x00") ((_ re.loop 5 5) re.allchar) (re.union (re.++ (re.union (str.to.re "T") (str.to.re "W")) ((_ re.loop 3 3) (re.range "A" "Z"))) (str.to.re "COMM")) (str.to.re "/smi\x0a")))))
; yddznydqir\x2feviaresflashdownloader\x2Ecom
(assert (str.in.re X (str.to.re "yddznydqir/eviaresflashdownloader.com\x0a")))
; /^\/[a-z0-9]{32}\/[a-z0-9]{32}\.jnlp/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jnlp/U\x0a"))))
(check-sat)
