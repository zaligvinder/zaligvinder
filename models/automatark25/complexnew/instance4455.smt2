(declare-const X String)
; Test\d+DesktopAddressIDENTIFY666User-Agent\u{3A}\u{5B}Static
(assert (str.in_re X (re.++ (str.to_re "Test") (re.+ (re.range "0" "9")) (str.to_re "DesktopAddressIDENTIFY666User-Agent:[Static\u{a}"))))
; logsFictionalReporterCookieUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "logsFictionalReporterCookieUser-Agent:\u{a}"))))
; pjpoptwql\u{2f}rlnjsportsHost\u{3A}Subject\u{3a}YAHOOdestroyed\u{21}
(assert (str.in_re X (str.to_re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\u{a}")))
(check-sat)
