(declare-const X String)
; /filename=[^\n]*\x2excf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xcf/i\x0a")))))
; awbeta\.net-nucleus\.com\d
(assert (not (str.in.re X (re.++ (str.to.re "awbeta.net-nucleus.com") (re.range "0" "9") (str.to.re "\x0a")))))
; ([1-9]|[1-4][0-9]|5[0-2])
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "4") (re.range "0" "9")) (re.++ (str.to.re "5") (re.range "0" "2"))) (str.to.re "\x0a")))))
; ConnectionUser-Agent\x3A\swww\.fast-finder\.com
(assert (str.in.re X (re.++ (str.to.re "ConnectionUser-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com\x0a"))))
(check-sat)
