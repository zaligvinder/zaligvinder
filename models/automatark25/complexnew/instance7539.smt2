(declare-const X String)
; ^([a-zA-Z0-9]{6,18}?)$
(assert (str.in.re X (re.++ ((_ re.loop 6 18) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2edbp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dbp/i\x0a"))))
; \d+,?\d+\$?
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ",")) (re.+ (re.range "0" "9")) (re.opt (str.to.re "$")) (str.to.re "\x0a")))))
; nick_name=CIA-Test\d+url=http\x3A\d+\x2FNFO\x2CRegistered\x28BDLL\x29
(assert (not (str.in.re X (re.++ (str.to.re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to.re "url=http:\x1b") (re.+ (re.range "0" "9")) (str.to.re "/NFO,Registered(BDLL)\x13\x0a")))))
; at\w+Pre\s+adfsgecoiwnfhirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (str.in.re X (re.++ (str.to.re "at") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1bSurveillance\x13Host:\x0a"))))
(check-sat)
