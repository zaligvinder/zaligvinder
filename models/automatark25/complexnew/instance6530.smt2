(declare-const X String)
; /filename=[^\n]*\x2ecpe/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cpe/i\x0a")))))
; /\/feed\.dll\?pub_id=\d+?\&ua=/Ui
(assert (str.in.re X (re.++ (str.to.re "//feed.dll?pub_id=") (re.+ (re.range "0" "9")) (str.to.re "&ua=/Ui\x0a"))))
(check-sat)
