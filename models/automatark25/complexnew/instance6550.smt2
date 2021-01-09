(declare-const X String)
; /q=[a-f0-9]+$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/q=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
; Web-Mail\s+\x2Fcgi\x2Flogurl\.cgi.*SurveillanceHost\x3a
(assert (str.in.re X (re.++ (str.to.re "Web-Mail") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgi") (re.* re.allchar) (str.to.re "Surveillance\x13Host:\x0a"))))
; Cookie\x3a\s+\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (not (str.in.re X (re.++ (str.to.re "Cookie:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/GRSI|Server|\x13Host:origin=sidefind\x0a")))))
(check-sat)
