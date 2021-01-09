(declare-const X String)
; ZC-Bridge\d+JMail\d+GENERAL_PARAM2
(assert (str.in.re X (re.++ (str.to.re "ZC-Bridge") (re.+ (re.range "0" "9")) (str.to.re "JMail") (re.+ (re.range "0" "9")) (str.to.re "GENERAL_PARAM2\x0a"))))
; /filename=[^\n]*\x2ecsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".csd/i\x0a"))))
; /\x2eplp([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.plp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2exul/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xul/i\x0a"))))
(check-sat)
