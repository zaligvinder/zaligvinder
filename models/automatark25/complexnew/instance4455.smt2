(declare-const X String)
; Test\d+DesktopAddressIDENTIFY666User-Agent\x3A\x5BStatic
(assert (str.in.re X (re.++ (str.to.re "Test") (re.+ (re.range "0" "9")) (str.to.re "DesktopAddressIDENTIFY666User-Agent:[Static\x0a"))))
; logsFictionalReporterCookieUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "logsFictionalReporterCookieUser-Agent:\x0a"))))
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (str.in.re X (str.to.re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\x0a")))
(check-sat)
