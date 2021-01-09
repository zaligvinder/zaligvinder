(declare-const X String)
; /filename=[^\n]*\x2ereg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".reg/i\x0a")))))
; (<input )(.*?)(>)
(assert (str.in.re X (re.++ (str.to.re "<input ") (re.* re.allchar) (str.to.re ">\x0a"))))
; ^[^\"]+$
(assert (not (str.in.re X (re.++ (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x0a")))))
; on\w+Host\x3AComputerKeylogger\x2EcomHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:ComputerKeylogger.comHost:User-Agent:\x0a")))))
(check-sat)
