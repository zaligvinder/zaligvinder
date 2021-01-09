(declare-const X String)
; [0-9.\-/+() ]{4,}
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "/") (str.to.re "+") (str.to.re "(") (str.to.re ")") (str.to.re " "))) (re.* (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "/") (str.to.re "+") (str.to.re "(") (str.to.re ")") (str.to.re " ")))))))
; Host\x3a\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre") (re.* re.allchar) (str.to.re "Keyloggeradfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1b\x0a")))))
; [0-9]+|-[0-9]+
(assert (not (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
; \x3BCIA\s+is\s+User-Agent\x3Acid=tb\x2eCookie\x3A
(assert (not (str.in.re X (re.++ (str.to.re ";CIA") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "is") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:cid=tb.Cookie:\x0a")))))
(check-sat)
