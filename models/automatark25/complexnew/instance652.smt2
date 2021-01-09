(declare-const X String)
; ^([a-zA-Z][a-zA-Z\&\-\.\'\s]*|)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "&") (str.to.re "-") (str.to.re ".") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; @([_a-zA-Z]+)
(assert (not (str.in.re X (re.++ (str.to.re "@") (re.+ (re.union (str.to.re "_") (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; c\.goclick\.com\s+URLBlaze\s+Host\x3A
(assert (str.in.re X (re.++ (str.to.re "c.goclick.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlaze") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; /filename=[^\n]*\x2epor/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".por/i\x0a")))))
; Host\x3a\w+Host\x3A.*Host\x3aToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:ToolbarServerserver}{Sysuptime:\x0a")))))
(check-sat)
