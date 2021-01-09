(declare-const X String)
; Spy\s+toolbar_domain_redirect
(assert (not (str.in.re X (re.++ (str.to.re "Spy") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirect\x0a")))))
; RunnerHost\x3a\x2Ehtmldll\x3FCenterspasSubject\x3AHost\x3AconnectedNodes\x26Name=
(assert (str.in.re X (str.to.re "RunnerHost:.htmldll?CenterspasSubject:Host:connectedNodes&Name=\x0a")))
(check-sat)
