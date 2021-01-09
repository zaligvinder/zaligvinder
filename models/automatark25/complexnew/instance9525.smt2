(declare-const X String)
; /pdf\.php\?pdf=[0-9A-F]+&type=\d+&o=[^&]+&b=/U
(assert (str.in.re X (re.++ (str.to.re "/pdf.php?pdf=") (re.+ (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "&type=") (re.+ (re.range "0" "9")) (str.to.re "&o=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&b=/U\x0a"))))
; \x2Fcs\x2Fpop4\x2FUser-Agent\x3Akitwww\x2Eborlander\x2Ecom\x2Ecn
(assert (str.in.re X (str.to.re "/cs/pop4/User-Agent:kitwww.borlander.com.cn\x0a")))
; ^[a-zA-Z]{4}\d{6}[a-zA-Z]{6}\d{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; spyblpatHost\x3Ais\x2EphpBarFrom\x3AHost\x3Agdvsotuqwsg\x2fdxt\.hd
(assert (str.in.re X (str.to.re "spyblpatHost:is.phpBarFrom:Host:gdvsotuqwsg/dxt.hd\x0a")))
(check-sat)
