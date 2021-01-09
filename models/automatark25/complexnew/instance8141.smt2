(declare-const X String)
; ^\$[0-9]+(\.[0-9][0-9])?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2esearch-ms/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".search-ms/i\x0a")))))
; Host\x3A[^\n\r]*\x2Fbar_pl\x2Fshdoclc\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "/bar_pl/shdoclc.fcgi\x0a")))))
; ^\w+.*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
