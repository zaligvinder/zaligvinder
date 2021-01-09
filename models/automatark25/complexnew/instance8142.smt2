(declare-const X String)
; Web-Mail\s+\x2Fcgi\x2Flogurl\.cgi.*SurveillanceHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Web-Mail") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgi") (re.* re.allchar) (str.to.re "Surveillance\x13Host:\x0a")))))
; \bhttp(s?)\:\/\/[a-zA-Z0-9\/\?\-\.\&\(\)_=#]*
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "?") (str.to.re "-") (str.to.re ".") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "_") (str.to.re "=") (str.to.re "#"))) (str.to.re "\x0a")))))
; /\x23\d{2}\x3a\d{2}\x3a\d\d$/R
(assert (str.in.re X (re.++ (str.to.re "/#") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ":") (re.range "0" "9") (re.range "0" "9") (str.to.re "/R\x0a"))))
; YWRtaW46cGFzc3dvcmQ[^\n\r]*DA[^\n\r]*Host\x3Awww\x2Ee-finder\x2Ecc
(assert (not (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "DA") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:www.e-finder.cc\x0a")))))
; ^[B|K|T|P][A-Z][0-9]{4}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "B") (str.to.re "|") (str.to.re "K") (str.to.re "T") (str.to.re "P")) (re.range "A" "Z") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
