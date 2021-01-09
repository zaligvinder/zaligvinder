(declare-const X String)
; /\x2epptx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pptx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2ejfif/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jfif/i\x0a")))))
; /(<\/?)(\w+)([^>]*>)/e
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/e\x0a<") (re.opt (str.to.re "/")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">")))))
; User-Agent\x3AX-Mailer\x3aHost\x3Adcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "User-Agent:X-Mailer:\x13Host:dcww.dmcast.com\x0a")))
; User-Agent\x3a\s+sErver\s+-~-GREATHost\x3a
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "sErver") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-~-GREATHost:\x0a"))))
(check-sat)
