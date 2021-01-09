(declare-const X String)
; (NL-?)?[0-9]{9}B[0-9]{2}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "NL") (re.opt (str.to.re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "B") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[1-9][0-9]{3}[ ]?(([a-rt-zA-RT-Z]{2})|([sS][^dasDAS]))$
(assert (not (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.union ((_ re.loop 2 2) (re.union (re.range "a" "r") (re.range "t" "z") (re.range "A" "R") (re.range "T" "Z"))) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "d") (str.to.re "a") (str.to.re "s") (str.to.re "D") (str.to.re "A") (str.to.re "S")))) (str.to.re "\x0a")))))
; com\dsearch\x2econduit\x2ecom\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "com") (re.range "0" "9") (str.to.re "search.conduit.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; Version\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (not (str.in.re X (re.++ (str.to.re "Version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:bindmqnqgijmng/oj\x0a")))))
(check-sat)
