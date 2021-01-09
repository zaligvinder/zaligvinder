(declare-const X String)
; /gate\x2ephp\x3freg=[a-zA-Z]{15}/U
(assert (str.in.re X (re.++ (str.to.re "/gate.php?reg=") ((_ re.loop 15 15) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/U\x0a"))))
; ToolbarUser-Agent\x3AFrom\x3A
(assert (str.in.re X (str.to.re "ToolbarUser-Agent:From:\x0a")))
; This\s+\x7D\x7BPassword\x3A\d+
(assert (not (str.in.re X (re.++ (str.to.re "This") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1b") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
