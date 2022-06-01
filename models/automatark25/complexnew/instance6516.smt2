(declare-const X String)
; /filename=[^\n]*\u{2e}wps/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wps/i\u{a}")))))
; ovplSubject\u{3A}TencentTravelerClient\u{7D}\u{7B}Sysuptime\u{3A}
(assert (not (str.in_re X (str.to_re "ovplSubject:TencentTravelerClient}{Sysuptime:\u{a}"))))
(check-sat)
