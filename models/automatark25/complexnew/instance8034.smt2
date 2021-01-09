(declare-const X String)
; OSSProxyHost\x3ASubject\x3as_sq=aolsnssignin
(assert (not (str.in.re X (str.to.re "OSSProxyHost:Subject:s_sq=aolsnssignin\x0a"))))
; linkautomatici\x2Ecom\dBasic\d+Host\x3AFloodedFictionalUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "linkautomatici.com") (re.range "0" "9") (str.to.re "Basic") (re.+ (re.range "0" "9")) (str.to.re "Host:FloodedFictionalUser-Agent:\x0a")))))
; ^([0-1]?[0-9]|[2][0-3])[:|.]([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.union (str.to.re ":") (str.to.re "|") (str.to.re ".")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9"))))
; Runner.*\x2Ehtml[^\n\r]*NetControl\x2EServer\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAH
(assert (not (str.in.re X (re.++ (str.to.re "Runner") (re.* re.allchar) (str.to.re ".html") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "NetControl.Server\x13") (re.+ (re.range "0" "9")) (str.to.re "media.dxcdirect.com.smx?PASSW=SAH\x0a")))))
; /[^imsxeADSUXu]([imsxeADSUXu]*)$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "i") (str.to.re "m") (str.to.re "s") (str.to.re "x") (str.to.re "e") (str.to.re "A") (str.to.re "D") (str.to.re "S") (str.to.re "U") (str.to.re "X") (str.to.re "u")) (re.* (re.union (str.to.re "i") (str.to.re "m") (str.to.re "s") (str.to.re "x") (str.to.re "e") (str.to.re "A") (str.to.re "D") (str.to.re "S") (str.to.re "U") (str.to.re "X") (str.to.re "u"))) (str.to.re "/\x0a")))))
(check-sat)
