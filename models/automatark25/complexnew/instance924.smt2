(declare-const X String)
; ^[0-9]+(,[0-9]+)*$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; http\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (str.in.re X (str.to.re "http://mysearch.dropspam.com/index.php?tpid=\x13\x0a")))
; DigExtNetBus\x5BStatic
(assert (not (str.in.re X (str.to.re "DigExtNetBus[Static\x0a"))))
; /\/jorg\.html$/U
(assert (not (str.in.re X (str.to.re "//jorg.html/U\x0a"))))
; /\x2eflv([\?\x5c\x2f]|$)/Umsi
(assert (not (str.in.re X (re.++ (str.to.re "/.flv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/Umsi\x0a")))))
(check-sat)
