(declare-const X String)
; MyHost\x3AtoHost\x3AWinSessionwww\x2eurlblaze\x2enetResultHost\x3A
(assert (not (str.in.re X (str.to.re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\x0a"))))
; (^(6334)[5-9](\d{11}$|\d{13,14}$))
(assert (str.in.re X (re.++ (str.to.re "\x0a6334") (re.range "5" "9") (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 13 14) (re.range "0" "9"))))))
(check-sat)
