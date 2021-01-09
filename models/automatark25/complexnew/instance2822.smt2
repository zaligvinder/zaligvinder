(declare-const X String)
; ProjectHost\x3AlogHost\x3Awww\x2Esnap\x2EcomGoogle-\>rtServidor\x2E
(assert (str.in.re X (str.to.re "ProjectHost:logHost:www.snap.comGoogle->rtServidor.\x13\x0a")))
; ^[a-zA-Z0-9][a-zA-Z0-9_]{2,29}$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 2 29) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a"))))
; ^\d*[0-9](|.\d*[0-9]|)*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.* (re.++ re.allchar (re.* (re.range "0" "9")) (re.range "0" "9"))) (str.to.re "\x0a"))))
; OSSProxyHost\x3ASubject\x3as_sq=aolsnssignin
(assert (str.in.re X (str.to.re "OSSProxyHost:Subject:s_sq=aolsnssignin\x0a")))
; /^[a-z\d\x2b\x2f\x3d]{48,256}$/iP
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 48 256) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/") (str.to.re "="))) (str.to.re "/iP\x0a"))))
(check-sat)
