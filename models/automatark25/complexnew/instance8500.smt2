(declare-const X String)
; Subject\x3aHostYWRtaW46cGFzc3dvcmQ
(assert (not (str.in.re X (str.to.re "Subject:HostYWRtaW46cGFzc3dvcmQ\x0a"))))
; SecureNet\s+hostiedesksearch\.dropspam\.com
(assert (not (str.in.re X (re.++ (str.to.re "SecureNet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostiedesksearch.dropspam.com\x0a")))))
; (([1-9]|[0][1-9])|1[012])[- /.](([1-9]|[0][1-9])|[12][0-9]|3[01])[- /.](19|20)\d\d
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2"))) (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union (str.to.re "19") (str.to.re "20")) (re.range "0" "9") (re.range "0" "9") (str.to.re "\x0a")))))
; /(Windows Phone|iPhone|BlackBerry|Mobile|Android|Opera Mini|Opera Mobile|SymbianOS)/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "Windows Phone") (str.to.re "iPhone") (str.to.re "BlackBerry") (str.to.re "Mobile") (str.to.re "Android") (str.to.re "Opera Mini") (str.to.re "Opera Mobile") (str.to.re "SymbianOS")) (str.to.re "/\x0a")))))
(check-sat)
