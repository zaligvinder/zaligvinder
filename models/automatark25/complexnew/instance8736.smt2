(declare-const X String)
; ref\x3D\x25user\x5Fid\d+\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "ref=%user_id") (re.+ (re.range "0" "9")) (str.to.re "/bar_pl/chk.fcgi\x0a")))))
; /filename=[^\n]*\x2efon/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fon/i\x0a")))))
(check-sat)
