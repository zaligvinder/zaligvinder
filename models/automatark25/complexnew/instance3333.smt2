(declare-const X String)
; [NS] \d{1,}(\:[0-5]\d){2}.{0,1}\d{0,},[EW] \d{1,}(\:[0-5]\d){2}.{0,1}\d{0,}
(assert (not (str.in.re X (re.++ (re.union (str.to.re "N") (str.to.re "S")) (str.to.re " ") (re.+ (re.range "0" "9")) ((_ re.loop 2 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt re.allchar) (re.* (re.range "0" "9")) (str.to.re ",") (re.union (str.to.re "E") (str.to.re "W")) (str.to.re " ") (re.+ (re.range "0" "9")) ((_ re.loop 2 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt re.allchar) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eotf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".otf/i\x0a")))))
; filename=\x22\s+www\x2Epeer2mail\x2Ecom.*LOG
(assert (str.in.re X (re.++ (str.to.re "filename=\x22") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com") (re.* re.allchar) (str.to.re "LOG\x0a"))))
(check-sat)
