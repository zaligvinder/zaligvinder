(declare-const X String)
; /\x2eappendChild.*?\x2eid.{0,200}?(offset|client)(Height|Left|Parent|Top|Width).{0,200}?(offset|client)(Height|Left|Parent|Top|Width)/is
(assert (str.in.re X (re.++ (str.to.re "/.appendChild") (re.* re.allchar) (str.to.re ".id") ((_ re.loop 0 200) re.allchar) (re.union (str.to.re "offset") (str.to.re "client")) (re.union (str.to.re "Height") (str.to.re "Left") (str.to.re "Parent") (str.to.re "Top") (str.to.re "Width")) ((_ re.loop 0 200) re.allchar) (re.union (str.to.re "offset") (str.to.re "client")) (re.union (str.to.re "Height") (str.to.re "Left") (str.to.re "Parent") (str.to.re "Top") (str.to.re "Width")) (str.to.re "/is\x0a"))))
; couponbar\.coupons\.com\dOwner\x3A\s+Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "couponbar.coupons.com") (re.range "0" "9") (str.to.re "Owner:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
; \x2Fbar_pl\x2Fchk_bar\.fcgiTrojanHost\x3A
(assert (not (str.in.re X (str.to.re "/bar_pl/chk_bar.fcgiTrojanHost:\x0a"))))
; /\.exe$/U
(assert (not (str.in.re X (str.to.re "/.exe/U\x0a"))))
; /\x2epict([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pict") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
