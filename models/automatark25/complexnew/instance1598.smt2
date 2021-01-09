(declare-const X String)
; trustyfiles\x2EcomBlade\x23\x23\x23\x23\.smx\?
(assert (not (str.in.re X (str.to.re "trustyfiles.comBlade####.smx?\x0a"))))
; rprpgbnrppb\x2fci\d\x2ElStopperHost\x3AHost\x3aclvompycem\x2fcen\.vcn
(assert (not (str.in.re X (re.++ (str.to.re "rprpgbnrppb/ci") (re.range "0" "9") (str.to.re ".lStopperHost:Host:clvompycem/cen.vcn\x0a")))))
; /filename=[^\n]*\x2ermf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rmf/i\x0a"))))
(check-sat)
