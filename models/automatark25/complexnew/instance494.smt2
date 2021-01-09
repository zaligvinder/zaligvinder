(declare-const X String)
; /\/AES\d+O\d+\.jsp\?[a-z0-9=\x2b\x2f]{20}/iU
(assert (not (str.in.re X (re.++ (str.to.re "//AES") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iU\x0a")))))
; ^[a-zA-Z0-9\x20'\.]{8,64}[^\s]$
(assert (not (str.in.re X (re.++ ((_ re.loop 8 64) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "'") (str.to.re "."))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a")))))
; [0](\d{9})|([0](\d{2})( |-)((\d{3}))( |-)(\d{4}))|[0](\d{2})( |-)(\d{7})
(assert (not (str.in.re X (re.union (re.++ (str.to.re "0") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))))
; tv\x2E180solutions\x2EcomGirlFriendHost\x3A
(assert (not (str.in.re X (str.to.re "tv.180solutions.comGirlFriendHost:\x0a"))))
(check-sat)
