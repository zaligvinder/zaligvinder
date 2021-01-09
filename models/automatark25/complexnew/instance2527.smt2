(declare-const X String)
; ProtoSubject\x3asource\=IncrediFindProjectAgentHost\x3AHost\x3AHost\x3A
(assert (str.in.re X (str.to.re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\x0a")))
; www\x2Esogou\x2Ecom\s+HWAE\+The\+password\+is\x3A
(assert (str.in.re X (re.++ (str.to.re "www.sogou.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAE+The+password+is:\x0a"))))
; /^\/999$/U
(assert (not (str.in.re X (str.to.re "//999/U\x0a"))))
; /\.php\?action=jv\&h=\d+/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/.php?action=jv&h=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; LogsHXLogOnlytoolbar\x2Ei-lookup\x2Ecom
(assert (not (str.in.re X (str.to.re "LogsHXLogOnlytoolbar.i-lookup.com\x0a"))))
(check-sat)
