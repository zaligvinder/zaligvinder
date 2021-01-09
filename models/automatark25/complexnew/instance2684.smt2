(declare-const X String)
; ^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[A-Za-z]{1}[ ]{0,1}\d{1}[A-Za-z]{1}\d{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (str.to.re "J") (str.to.re "K") (str.to.re "L") (str.to.re "M") (str.to.re "N") (str.to.re "P") (str.to.re "R") (str.to.re "S") (str.to.re "T") (str.to.re "V") (str.to.re "X") (str.to.re "Y") (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "e") (str.to.re "g") (str.to.re "h") (str.to.re "j") (str.to.re "k") (str.to.re "l") (str.to.re "m") (str.to.re "n") (str.to.re "p") (str.to.re "r") (str.to.re "s") (str.to.re "t") (str.to.re "v") (str.to.re "x") (str.to.re "y"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re " ")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
; vvvjkhmbgnbbw\x2fqbn\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "vvvjkhmbgnbbw/qbn\x1b(robert@blackcastlesoft.com)\x0a"))))
; (^[0][2][1579]{1})(\d{6,7}$)
(assert (str.in.re X (re.++ ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a02") ((_ re.loop 1 1) (re.union (str.to.re "1") (str.to.re "5") (str.to.re "7") (str.to.re "9"))))))
; /filename=[^\n]*\x2epfb/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfb/i\x0a"))))
; We\d+pjpoptwql\x2frlnjX-Mailer\x3a
(assert (not (str.in.re X (re.++ (str.to.re "We") (re.+ (re.range "0" "9")) (str.to.re "pjpoptwql/rlnjX-Mailer:\x13\x0a")))))
(check-sat)
