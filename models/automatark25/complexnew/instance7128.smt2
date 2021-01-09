(declare-const X String)
; /\x2epjpeg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pjpeg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2esum/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sum/i\x0a")))))
; /\x2F[a-z]+\x2epng/Ui
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "a" "z")) (str.to.re ".png/Ui\x0a"))))
; /\/software\x2ephp\x3f[0-9]{15,}/Ui
(assert (str.in.re X (re.++ (str.to.re "//software.php?/Ui\x0a") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9")))))
; ConnectionUser-Agent\x3A\swww\.fast-finder\.com
(assert (str.in.re X (re.++ (str.to.re "ConnectionUser-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com\x0a"))))
(check-sat)
