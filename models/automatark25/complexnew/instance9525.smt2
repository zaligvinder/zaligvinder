(declare-const X String)
; /pdf\.php\?pdf=[0-9A-F]+&type=\d+&o=[^&]+&b=/U
(assert (str.in_re X (re.++ (str.to_re "/pdf.php?pdf=") (re.+ (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "&type=") (re.+ (re.range "0" "9")) (str.to_re "&o=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&b=/U\u{a}"))))
; \u{2F}cs\u{2F}pop4\u{2F}User-Agent\u{3A}kitwww\u{2E}borlander\u{2E}com\u{2E}cn
(assert (str.in_re X (str.to_re "/cs/pop4/User-Agent:kitwww.borlander.com.cn\u{a}")))
; ^[a-zA-Z]{4}\d{6}[a-zA-Z]{6}\d{2}$
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
; spyblpatHost\u{3A}is\u{2E}phpBarFrom\u{3A}Host\u{3A}gdvsotuqwsg\u{2f}dxt\.hd
(assert (str.in_re X (str.to_re "spyblpatHost:is.phpBarFrom:Host:gdvsotuqwsg/dxt.hd\u{a}")))
(check-sat)
