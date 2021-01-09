(declare-const X String)
; Server\x3AWordTheHost\x3afrom
(assert (str.in.re X (str.to.re "Server:WordTheHost:from\x0a")))
; /\/AES\d{9}O\d{4,5}\x2ejsp/Ui
(assert (str.in.re X (re.++ (str.to.re "//AES") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "O") ((_ re.loop 4 5) (re.range "0" "9")) (str.to.re ".jsp/Ui\x0a"))))
; /\x2enab([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.nab") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
