(declare-const X String)
; \<img ((src|height|width|border)=:q:Wh*)*/\>
(assert (not (str.in_re X (re.++ (str.to_re "<img ") (re.* (re.++ (re.union (str.to_re "src") (str.to_re "height") (str.to_re "width") (str.to_re "border")) (str.to_re "=:q:W") (re.* (str.to_re "h")))) (str.to_re "/>\u{a}")))))
; clvompycem\u{2f}cen\.vcnHost\u{3A}User-Agent\u{3A}\u{d}\u{a}
(assert (not (str.in_re X (str.to_re "clvompycem/cen.vcnHost:User-Agent:\u{d}\u{a}\u{a}"))))
; /\u{2e}kvl([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.kvl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /m.php\?do=(getvers|status|getcmd)/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/m") re.allchar (str.to_re "php?do=") (re.union (str.to_re "getvers") (str.to_re "status") (str.to_re "getcmd")) (str.to_re "/Ui\u{a}")))))
; User-Agent\u{3A}uuid=aadserverfowclxccdxn\u{2f}uxwn\.ddy
(assert (str.in_re X (str.to_re "User-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\u{a}")))
(check-sat)
