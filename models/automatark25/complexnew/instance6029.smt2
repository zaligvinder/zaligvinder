(declare-const X String)
; ^[0-9]*[02468]$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.union (str.to.re "0") (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "8")) (str.to.re "\x0a")))))
; ^(www\.regxlib\.com)$
(assert (not (str.in.re X (str.to.re "www.regxlib.com\x0a"))))
; jquery\-(\d|\.)*\.min\.js
(assert (not (str.in.re X (re.++ (str.to.re "jquery-") (re.* (re.union (re.range "0" "9") (str.to.re "."))) (str.to.re ".min.js\x0a")))))
; AnalSpy\-LockedacezSubject\x3A
(assert (not (str.in.re X (str.to.re "AnalSpy-LockedacezSubject:\x0a"))))
; ^\$[0-9]+(\.[0-9][0-9])?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
