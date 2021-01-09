(declare-const X String)
; \<img ((src|height|width|border)=:q:Wh*)*/\>
(assert (not (str.in.re X (re.++ (str.to.re "<img ") (re.* (re.++ (re.union (str.to.re "src") (str.to.re "height") (str.to.re "width") (str.to.re "border")) (str.to.re "=:q:W") (re.* (str.to.re "h")))) (str.to.re "/>\x0a")))))
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (not (str.in.re X (str.to.re "clvompycem/cen.vcnHost:User-Agent:\x0d\x0a\x0a"))))
; /\x2ekvl([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.kvl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /m.php\?do=(getvers|status|getcmd)/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/m") re.allchar (str.to.re "php?do=") (re.union (str.to.re "getvers") (str.to.re "status") (str.to.re "getcmd")) (str.to.re "/Ui\x0a")))))
; User-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (str.to.re "User-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\x0a")))
(check-sat)
