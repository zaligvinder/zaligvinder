(declare-const X String)
; /\/flupdate\/\d\.html/iU
(assert (not (str.in.re X (re.++ (str.to.re "//flupdate/") (re.range "0" "9") (str.to.re ".html/iU\x0a")))))
; Google\s+-~-GREATHost\x3aFILESIZE\x3E
(assert (not (str.in.re X (re.++ (str.to.re "Google") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-~-GREATHost:FILESIZE>\x13\x0a")))))
(check-sat)
