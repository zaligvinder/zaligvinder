(declare-const X String)
; /filename=[^\n]*\x2erjs/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rjs/i\x0a"))))
; /\/\d+\.mp3\?rnd=\d+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".mp3?rnd=") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a")))))
; (^[1]$)|(^[1]+\d*\.+\d*[1-5]$)
(assert (str.in.re X (re.union (str.to.re "1") (re.++ (str.to.re "\x0a") (re.+ (str.to.re "1")) (re.* (re.range "0" "9")) (re.+ (str.to.re ".")) (re.* (re.range "0" "9")) (re.range "1" "5")))))
; ^[A-Za-z]{1}[0-9]{7}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
