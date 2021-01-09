(declare-const X String)
; Keylogger[^\n\r]*dll\x3F\w+www2\x2einstantbuzz\x2ecom\s+Online100013Agentsvr\x5E\x5EMerlinHost\x3AHost\x3Aport
(assert (str.in.re X (re.++ (str.to.re "Keylogger") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www2.instantbuzz.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online100013Agentsvr^^Merlin\x13Host:Host:port\x0a"))))
; /filename=[^\n]*\x2evap/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vap/i\x0a"))))
; www\x2Eslinkyslate.*Redirector\x22.*Host\x3Atoolbarplace\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "www.slinkyslate") (re.* re.allchar) (str.to.re "Redirector\x22") (re.* re.allchar) (str.to.re "Host:toolbarplace.com\x0a"))))
; ^[-]?\d{1,10}\.?([0-9][0-9])?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 10) (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.++ (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ef4a/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4a/i\x0a")))))
(check-sat)
