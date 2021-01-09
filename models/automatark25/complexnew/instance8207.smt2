(declare-const X String)
; A-311Host\x3Alnzzlnbk\x2fpkrm\.finSubject\x3a
(assert (not (str.in.re X (str.to.re "A-311Host:lnzzlnbk/pkrm.finSubject:\x0a"))))
; ^([^:])+\\.([^:])+$
(assert (not (str.in.re X (re.++ (re.+ (re.comp (str.to.re ":"))) (str.to.re "\x5c") re.allchar (re.+ (re.comp (str.to.re ":"))) (str.to.re "\x0a")))))
(check-sat)
