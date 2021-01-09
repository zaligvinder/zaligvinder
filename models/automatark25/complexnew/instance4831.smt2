(declare-const X String)
; <!--.*?-->
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.* re.allchar) (str.to.re "-->\x0a"))))
; Spy\s+\x0d\x0a.*YAHOOdestroyed\x21Host\x3a
(assert (str.in.re X (re.++ (str.to.re "Spy") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0d\x0a") (re.* re.allchar) (str.to.re "YAHOOdestroyed!Host:\x0a"))))
(check-sat)
