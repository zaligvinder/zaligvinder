(declare-const X String)
; logs\d+X-Mailer\x3a\d+url=enews\x2Eearthlink\x2Enet
(assert (str.in.re X (re.++ (str.to.re "logs") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13") (re.+ (re.range "0" "9")) (str.to.re "url=enews.earthlink.net\x0a"))))
; rprpgbnrppb\x2fci\d\x2ElStopperHost\x3AHost\x3aclvompycem\x2fcen\.vcn
(assert (not (str.in.re X (re.++ (str.to.re "rprpgbnrppb/ci") (re.range "0" "9") (str.to.re ".lStopperHost:Host:clvompycem/cen.vcn\x0a")))))
; toolsbar\x2Ekuaiso\x2Ecom\d\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "toolsbar.kuaiso.com") (re.range "0" "9") (str.to.re "/bar_pl/chk_bar.fcgi\x0a")))))
; User-Agent\x3a[^\n\r]*Echelon.*Blacksnprtz\x7CdialnoSearch
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Echelon") (re.* re.allchar) (str.to.re "Blacksnprtz|dialnoSearch\x0a"))))
(check-sat)
