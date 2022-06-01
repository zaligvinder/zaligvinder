(declare-const X String)
; trustyfiles\u{2E}comBlade\u{23}\u{23}\u{23}\u{23}\.smx\?
(assert (not (str.in_re X (str.to_re "trustyfiles.comBlade####.smx?\u{a}"))))
; rprpgbnrppb\u{2f}ci\d\u{2E}lStopperHost\u{3A}Host\u{3a}clvompycem\u{2f}cen\.vcn
(assert (not (str.in_re X (re.++ (str.to_re "rprpgbnrppb/ci") (re.range "0" "9") (str.to_re ".lStopperHost:Host:clvompycem/cen.vcn\u{a}")))))
; /filename=[^\n]*\u{2e}rmf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rmf/i\u{a}"))))
(check-sat)
