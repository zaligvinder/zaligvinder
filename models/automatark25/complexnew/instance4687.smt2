(declare-const X String)
; ^[A-Z][a-z]+((i)?e(a)?(u)?[r(re)?|x]?)$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.opt (str.to.re "i")) (str.to.re "e") (re.opt (str.to.re "a")) (re.opt (str.to.re "u")) (re.opt (re.union (str.to.re "r") (str.to.re "(") (str.to.re "e") (str.to.re ")") (str.to.re "?") (str.to.re "|") (str.to.re "x")))))))
; IDENTIFY.*\x2Fezsb\d+X-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "/ezsb") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13\x0a")))))
; \.cfg\x2Fsearchfast\x2F\x22007A-SpyWebsitehttp\x3A\x2F\x2Fsupremetoolbar\.com\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re ".cfg/searchfast/\x22007A-SpyWebsitehttp://supremetoolbar.com/index.php?tpid=\x0a"))))
; /listoverridecount([2345678]|[019][0-9])/i
(assert (not (str.in.re X (re.++ (str.to.re "/listoverridecount") (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "9")) (re.range "0" "9")) (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8")) (str.to.re "/i\x0a")))))
; ^(\d{1,4}?[.]{0,1}?\d{0,3}?)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 0 3) (re.range "0" "9")))))
(check-sat)
