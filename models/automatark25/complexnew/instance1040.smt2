(declare-const X String)
; User-Agent\x3A\x2Ftba\x2FFrom\x3A
(assert (str.in.re X (str.to.re "User-Agent:/tba/From:\x0a")))
; Iterenet\s+www\x2Emirarsearch\x2EcomHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Iterenet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.mirarsearch.comHost:\x0a")))))
; ^([A-Z]{1}\w{1,3}) (\d{1}[A-Z]{2})$
(assert (not (str.in.re X (re.++ (str.to.re " \x0a") ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "A" "Z"))))))
; zmnjgmomgbdz\x2fzzmw\.gzt\d+Ready
(assert (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.range "0" "9")) (str.to.re "Ready\x0a"))))
(check-sat)
