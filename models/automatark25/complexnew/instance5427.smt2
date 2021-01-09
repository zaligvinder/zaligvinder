(declare-const X String)
; www\x2Eonlinecasinoextra\x2Ecomsqlads\.grokads\.com
(assert (str.in.re X (str.to.re "www.onlinecasinoextra.comsqlads.grokads.com\x0a")))
; \A([0-9a-zA-Z_]{1,15})|(@([0-9a-zA-Z_]{1,15}))\Z
(assert (str.in.re X (re.union ((_ re.loop 1 15) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_"))) (re.++ (str.to.re "\x0a@") ((_ re.loop 1 15) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_")))))))
; rprpgbnrppb\x2fci\d\x2ElStopperHost\x3AHost\x3aclvompycem\x2fcen\.vcn
(assert (str.in.re X (re.++ (str.to.re "rprpgbnrppb/ci") (re.range "0" "9") (str.to.re ".lStopperHost:Host:clvompycem/cen.vcn\x0a"))))
(check-sat)
