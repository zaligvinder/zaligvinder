(declare-const X String)
; WindowsFrom\x3A\x2FCU1\-extreme\x2Ebiz
(assert (not (str.in.re X (str.to.re "WindowsFrom:/CU1-extreme.biz\x0a"))))
; vb\s+Host\x3ASubject\x3Aonline-casino-searcher\.com
(assert (not (str.in.re X (re.++ (str.to.re "vb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:online-casino-searcher.com\x0a")))))
; ^(-?)(,?)(\d{1,3}(\.\d{3})*|(\d+))(\,\d{2})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re ",")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ",") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /\x2epui([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pui") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; DigExtNetBus\x5BStatic
(assert (not (str.in.re X (str.to.re "DigExtNetBus[Static\x0a"))))
(check-sat)
