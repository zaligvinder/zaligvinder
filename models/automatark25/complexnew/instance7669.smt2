(declare-const X String)
; ^[1-9]+[0-9]*$
(assert (str.in.re X (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2etga([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.tga") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Netspy\s\x3Aauto\x2Eisearch\x2EcomUser-Agent\x3Aaohobygi\x2fzwiwHWAEfhfksjzsfu\x2fahm\.uqs
(assert (str.in.re X (re.++ (str.to.re "Netspy") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":auto.isearch.comUser-Agent:aohobygi/zwiwHWAEfhfksjzsfu/ahm.uqs\x0a"))))
(check-sat)
