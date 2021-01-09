(declare-const X String)
; /filename=[^\n]*\x2eamf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".amf/i\x0a"))))
; on\w+Host\x3AComputerKeylogger\x2EcomHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:ComputerKeylogger.comHost:User-Agent:\x0a")))))
; /filename=[^\n]*\x2eotf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".otf/i\x0a"))))
; ^([987]{1})(\d{1})(\d{8})
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "9") (str.to.re "8") (str.to.re "7"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
