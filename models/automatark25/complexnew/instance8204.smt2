(declare-const X String)
; ^[1-9][0-9]{3}[ ]?(([a-rt-zA-RT-Z]{2})|([sS][^dasDAS]))$
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.union ((_ re.loop 2 2) (re.union (re.range "a" "r") (re.range "t" "z") (re.range "A" "R") (re.range "T" "Z"))) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "d") (str.to.re "a") (str.to.re "s") (str.to.re "D") (str.to.re "A") (str.to.re "S")))) (str.to.re "\x0a"))))
; log\=\x7BIP\x3A\d\x2Etxt\s+Pcast\x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2EcomHost\x3A
(assert (str.in.re X (re.++ (str.to.re "log={IP:") (re.range "0" "9") (str.to.re ".txt") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Pcast.dat.Toolbar}{OS:toolsbar.kuaiso.comHost:\x0a"))))
(check-sat)
