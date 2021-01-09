(declare-const X String)
; /filename=[^\n]*\x2ewps/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wps/i\x0a")))))
; ovplSubject\x3ATencentTravelerClient\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (str.to.re "ovplSubject:TencentTravelerClient}{Sysuptime:\x0a"))))
(check-sat)
