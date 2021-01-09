(declare-const X String)
; (^[0-9]{1,8}|(^[0-9]{1,8}\.{0,1}[0-9]{1,2}))$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 1 8) (re.range "0" "9")) (re.++ ((_ re.loop 1 8) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; horoscope2YAHOOwww\x2e2-seek\x2ecom\x2fsearchHost\x3A
(assert (not (str.in.re X (str.to.re "horoscope2YAHOOwww.2-seek.com/searchHost:\x0a"))))
; /^\/load\.php\?spl=[^&]+&b=[^&]+&o=[^&]+&i=/U
(assert (not (str.in.re X (re.++ (str.to.re "//load.php?spl=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&b=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&o=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&i=/U\x0a")))))
(check-sat)
