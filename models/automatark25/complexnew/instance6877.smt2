(declare-const X String)
; ovpl\s+\x7D\x7BPort\x3A.*SOAPAction\x3A.*adfsgecoiwnfHost\x3A\x3Fsearch\x3D
(assert (str.in.re X (re.++ (str.to.re "ovpl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:") (re.* re.allchar) (str.to.re "SOAPAction:") (re.* re.allchar) (str.to.re "adfsgecoiwnf\x1bHost:?search=\x0a"))))
; ^([A-Z0-9?.+-])+([,]([A-Z0-9?.+-])+)*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "?") (str.to.re ".") (str.to.re "+") (str.to.re "-"))) (re.* (re.++ (str.to.re ",") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "?") (str.to.re ".") (str.to.re "+") (str.to.re "-"))))) (str.to.re "\x0a")))))
; Host\x3a\s+is\s+User-Agent\x3Acid=tb\x2eCookie\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "is") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:cid=tb.Cookie:\x0a")))))
(check-sat)
