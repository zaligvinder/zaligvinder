(declare-const X String)
; ref\x3D\x25user\x5Fid\d+\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in.re X (re.++ (str.to.re "ref=%user_id") (re.+ (re.range "0" "9")) (str.to.re "/bar_pl/chk.fcgi\x0a"))))
(check-sat)
