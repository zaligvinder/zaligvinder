(declare-const X String)
; /^\/load\.php\?spl=[^&]+&b=[^&]+&o=[^&]+&i=/U
(assert (str.in.re X (re.++ (str.to.re "//load.php?spl=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&b=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&o=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&i=/U\x0a"))))
(check-sat)
