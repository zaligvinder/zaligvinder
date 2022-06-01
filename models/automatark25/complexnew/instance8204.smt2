(declare-const X String)
; ^[1-9][0-9]{3}[ ]?(([a-rt-zA-RT-Z]{2})|([sS][^dasDAS]))$
(assert (str.in_re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re " ")) (re.union ((_ re.loop 2 2) (re.union (re.range "a" "r") (re.range "t" "z") (re.range "A" "R") (re.range "T" "Z"))) (re.++ (re.union (str.to_re "s") (str.to_re "S")) (re.union (str.to_re "d") (str.to_re "a") (str.to_re "s") (str.to_re "D") (str.to_re "A") (str.to_re "S")))) (str.to_re "\u{a}"))))
; log\=\u{7B}IP\u{3A}\d\u{2E}txt\s+Pcast\u{2E}dat\u{2E}Toolbar\u{7D}\u{7B}OS\u{3A}toolsbar\u{2E}kuaiso\u{2E}comHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "log={IP:") (re.range "0" "9") (str.to_re ".txt") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar}{OS:toolsbar.kuaiso.comHost:\u{a}"))))
(check-sat)
