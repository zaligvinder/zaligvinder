(declare-const X String)
; ^[0-9]*[02468]$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (str.to_re "\u{a}")))))
; ^(www\.regxlib\.com)$
(assert (not (str.in_re X (str.to_re "www.regxlib.com\u{a}"))))
; jquery\-(\d|\.)*\.min\.js
(assert (not (str.in_re X (re.++ (str.to_re "jquery-") (re.* (re.union (re.range "0" "9") (str.to_re "."))) (str.to_re ".min.js\u{a}")))))
; AnalSpy\-LockedacezSubject\u{3A}
(assert (not (str.in_re X (str.to_re "AnalSpy-LockedacezSubject:\u{a}"))))
; ^\$[0-9]+(\.[0-9][0-9])?$
(assert (not (str.in_re X (re.++ (str.to_re "$") (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.range "0" "9") (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
