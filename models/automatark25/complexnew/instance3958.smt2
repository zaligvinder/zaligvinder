(declare-const X String)
; ookflolfctm\x2fnmot\.fmu
(assert (str.in.re X (str.to.re "ookflolfctm/nmot.fmu\x0a")))
; www\.thecommunicator\.net\sHost\x3A\dhoroscope2
(assert (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.range "0" "9") (str.to.re "horoscope2\x0a"))))
(check-sat)
