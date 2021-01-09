(declare-const X String)
; \x2Fcs\x2Fpop4\x2FUser-Agent\x3Akitwww\x2Eborlander\x2Ecom\x2Ecn
(assert (str.in.re X (str.to.re "/cs/pop4/User-Agent:kitwww.borlander.com.cn\x0a")))
(check-sat)
