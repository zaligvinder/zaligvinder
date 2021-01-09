(declare-const X String)
; ^(.|\n){0,16}$
(assert (not (str.in.re X (re.++ ((_ re.loop 0 16) (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "\x0a")))))
; ^[1-9][0-9]{3}[ ]?(([a-rt-zA-RT-Z]{2})|([sS][^dasDAS]))$
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.union ((_ re.loop 2 2) (re.union (re.range "a" "r") (re.range "t" "z") (re.range "A" "R") (re.range "T" "Z"))) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "d") (str.to.re "a") (str.to.re "s") (str.to.re "D") (str.to.re "A") (str.to.re "S")))) (str.to.re "\x0a"))))
; rprpgbnrppb\x2fci\d\x2ElStopperHost\x3AHost\x3aclvompycem\x2fcen\.vcn
(assert (not (str.in.re X (re.++ (str.to.re "rprpgbnrppb/ci") (re.range "0" "9") (str.to.re ".lStopperHost:Host:clvompycem/cen.vcn\x0a")))))
; (([\n,  ])*((<+)([^<>]+)(>*))+([\n,  ])*)+
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.* (re.union (str.to.re "\x0a") (str.to.re ",") (str.to.re " "))) (re.+ (re.++ (re.+ (str.to.re "<")) (re.+ (re.union (str.to.re "<") (str.to.re ">"))) (re.* (str.to.re ">")))) (re.* (re.union (str.to.re "\x0a") (str.to.re ",") (str.to.re " "))))) (str.to.re "\x0a")))))
(check-sat)
