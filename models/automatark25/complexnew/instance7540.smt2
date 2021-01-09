(declare-const X String)
; ^.*(yourdomain.com).*$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.* re.allchar) (str.to.re "\x0ayourdomain") re.allchar (str.to.re "com")))))
; \x2Fcs\x2Fpop4\x2FUser-Agent\x3Akitwww\x2Eborlander\x2Ecom\x2Ecn
(assert (not (str.in.re X (str.to.re "/cs/pop4/User-Agent:kitwww.borlander.com.cn\x0a"))))
; Host\x3ASpyxpsp2-Host\x3aHost\x3Awjpropqmlpohj\x2floregister\.asp
(assert (str.in.re X (str.to.re "Host:Spyxpsp2-Host:Host:wjpropqmlpohj/loregister.asp\x0a")))
; www\x2Efreescratchandwin\x2Ecom\d+Server.*www\x2Ecameup\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "www.freescratchandwin.com") (re.+ (re.range "0" "9")) (str.to.re "Server") (re.* re.allchar) (str.to.re "www.cameup.com\x13\x0a"))))
; /filename=[^\n]*\x2emht/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mht/i\x0a"))))
(check-sat)
