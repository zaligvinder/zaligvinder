(declare-const X String)
; /^SSID=[a-zA-Z\d]{43}\x3B\x20A=[0-3]$/C
(assert (not (str.in.re X (re.++ (str.to.re "/SSID=") ((_ re.loop 43 43) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "; A=") (re.range "0" "3") (str.to.re "/C\x0a")))))
; /\x2eogx([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ogx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; requested.*zmnjgmomgbdz\x2fzzmw\.gzt\s+Reportsdaosearch\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "requested") (re.* re.allchar) (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Reportsdaosearch.com\x0a")))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a"))))
(check-sat)
