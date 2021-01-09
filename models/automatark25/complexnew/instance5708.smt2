(declare-const X String)
; ref\x3D\x25user\x5Fid\d+\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "ref=%user_id") (re.+ (re.range "0" "9")) (str.to.re "/bar_pl/chk.fcgi\x0a")))))
; pgwtjgxwthx\x2fbyb\.xkyLOGurl=enews\x2Eearthlink\x2Enet
(assert (str.in.re X (str.to.re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\x0a")))
; /filename=[^\n]*\x2evap/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vap/i\x0a"))))
; [^A-Za-z0-9_@\.]|@{2,}|\.{5,}
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (str.to.re "@")) (re.* (str.to.re "@"))) (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (str.to.re ".")) (re.* (str.to.re "."))) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re "@") (str.to.re "."))))
; rprpgbnrppb\x2fci\d\x2ElStopperHost\x3AHost\x3aclvompycem\x2fcen\.vcn
(assert (str.in.re X (re.++ (str.to.re "rprpgbnrppb/ci") (re.range "0" "9") (str.to.re ".lStopperHost:Host:clvompycem/cen.vcn\x0a"))))
(check-sat)
