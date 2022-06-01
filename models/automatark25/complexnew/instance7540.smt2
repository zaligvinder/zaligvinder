(declare-const X String)
; ^.*(yourdomain.com).*$
(assert (not (str.in_re X (re.++ (re.* re.allchar) (re.* re.allchar) (str.to_re "\u{a}yourdomain") re.allchar (str.to_re "com")))))
; \u{2F}cs\u{2F}pop4\u{2F}User-Agent\u{3A}kitwww\u{2E}borlander\u{2E}com\u{2E}cn
(assert (not (str.in_re X (str.to_re "/cs/pop4/User-Agent:kitwww.borlander.com.cn\u{a}"))))
; Host\u{3A}Spyxpsp2-Host\u{3a}Host\u{3A}wjpropqmlpohj\u{2f}loregister\.asp
(assert (str.in_re X (str.to_re "Host:Spyxpsp2-Host:Host:wjpropqmlpohj/loregister.asp\u{a}")))
; www\u{2E}freescratchandwin\u{2E}com\d+Server.*www\u{2E}cameup\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "www.freescratchandwin.com") (re.+ (re.range "0" "9")) (str.to_re "Server") (re.* re.allchar) (str.to_re "www.cameup.com\u{13}\u{a}"))))
; /filename=[^\n]*\u{2e}mht/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mht/i\u{a}"))))
(check-sat)
