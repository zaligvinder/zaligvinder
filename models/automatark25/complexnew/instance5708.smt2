(declare-const X String)
; ref\u{3D}\u{25}user\u{5F}id\d+\u{2F}bar_pl\u{2F}chk\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.range "0" "9")) (str.to_re "/bar_pl/chk.fcgi\u{a}")))))
; pgwtjgxwthx\u{2f}byb\.xkyLOGurl=enews\u{2E}earthlink\u{2E}net
(assert (str.in_re X (str.to_re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\u{a}")))
; /filename=[^\n]*\u{2e}vap/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vap/i\u{a}"))))
; [^A-Za-z0-9_@\.]|@{2,}|\.{5,}
(assert (str.in_re X (re.union (re.++ ((_ re.loop 2 2) (str.to_re "@")) (re.* (str.to_re "@"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 5 5) (str.to_re ".")) (re.* (str.to_re "."))) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "@") (str.to_re "."))))
; rprpgbnrppb\u{2f}ci\d\u{2E}lStopperHost\u{3A}Host\u{3a}clvompycem\u{2f}cen\.vcn
(assert (str.in_re X (re.++ (str.to_re "rprpgbnrppb/ci") (re.range "0" "9") (str.to_re ".lStopperHost:Host:clvompycem/cen.vcn\u{a}"))))
(check-sat)
