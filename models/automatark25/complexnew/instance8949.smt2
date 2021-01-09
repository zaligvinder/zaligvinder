(declare-const X String)
; ^([A-Z]{2}|[A-Z]\d|\d[A-Z])[1-9](\d{1,3})?$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (re.range "A" "Z") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "A" "Z"))) (re.range "1" "9") (re.opt ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re "\x0a")))))
; Host\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a"))))
; /filename=[^\n]*\x2easf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asf/i\x0a")))))
; com\x2Findex\.php\?tpid=onspyblpatUser-Agent\x3ASurveillance
(assert (str.in.re X (str.to.re "com/index.php?tpid=onspyblpatUser-Agent:Surveillance\x13\x0a")))
(check-sat)
