(declare-const X String)
; /filename=[\x22\x27]?[^\n]*\x2epif[\x22\x27\s]/si
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pif") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a")))))
; url=\"([^\[\]\"]*)\"
(assert (str.in.re X (re.++ (str.to.re "url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22\x0a"))))
; /\/[a-z]+\?[a-z]+\=[a-z]+$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "a" "z")) (str.to.re "?") (re.+ (re.range "a" "z")) (str.to.re "=") (re.+ (re.range "a" "z")) (str.to.re "/U\x0a"))))
; /^\x2f[A-Za-z0-9]{33}\?s=\d\&m=\d$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 33 33) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "?s=") (re.range "0" "9") (str.to.re "&m=") (re.range "0" "9") (str.to.re "/U\x0a")))))
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "OS/") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:User-Agent:\x0a")))))
(check-sat)
