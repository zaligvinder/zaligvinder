(declare-const X String)
; ([^\\"]|\\.)*
(assert (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "\x22"))) (str.to.re "\x0a"))))
; com\x2Findex\.php\?tpid=onspyblpatUser-Agent\x3ASurveillance
(assert (not (str.in.re X (str.to.re "com/index.php?tpid=onspyblpatUser-Agent:Surveillance\x13\x0a"))))
(check-sat)
