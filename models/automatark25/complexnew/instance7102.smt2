(declare-const X String)
; Host\x3A\d+zmnjgmomgbdz\x2fzzmw\.gzt%3ftoolbar\x2Ei-lookup\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "zmnjgmomgbdz/zzmw.gzt%3ftoolbar.i-lookup.com\x0a")))))
; ^[1-9]0?$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.opt (str.to.re "0")) (str.to.re "\x0a"))))
; encoder[^\n\r]*\.cfg\s+Host\x3AWeHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "encoder") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re ".cfg") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:WeHost:\x0a")))))
; /filename=[^\n]*\x2emppl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mppl/i\x0a"))))
; ^\$((\d{1})\,\d{1,3}(\,\d{3}))|(\d{1,3}(\,\d{3}))|(\d{1,3})?$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "$") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.opt ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re "\x0a"))))))
(check-sat)
