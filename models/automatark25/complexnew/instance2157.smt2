(declare-const X String)
; ^((100)|(\d{0,2}))$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "100") ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re "\x0a")))))
; /name\x3dscreenshot\d+\x2e/i
(assert (not (str.in.re X (re.++ (str.to.re "/name=screenshot") (re.+ (re.range "0" "9")) (str.to.re "./i\x0a")))))
; Host\x3A\s+Subject\x3aHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:Host:\x0a")))))
; source\=IncrediFind\s+Host\x3A\s+Host\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "source=IncrediFind") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:\x0a")))))
(check-sat)
