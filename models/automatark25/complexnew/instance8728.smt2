(declare-const X String)
; /\/flupdate\/\d\.html/iU
(assert (str.in.re X (re.++ (str.to.re "//flupdate/") (re.range "0" "9") (str.to.re ".html/iU\x0a"))))
; ^(010|011|012)[0-9]{7}$
(assert (str.in.re X (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a01") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))))
; \+353\(0\)\s\d\s\d{3}\s\d{4}
(assert (not (str.in.re X (re.++ (str.to.re "+353(0)") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "0" "9") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
