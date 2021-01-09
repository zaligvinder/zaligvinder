(declare-const X String)
; Host\x3AUser-Agent\x3aHost\x3APortScaner
(assert (not (str.in.re X (str.to.re "Host:User-Agent:Host:PortScaner\x0a"))))
; ^[D-d][K-k]-[1-9]{1}[0-9]{3}$
(assert (str.in.re X (re.++ (re.range "D" "d") (re.range "K" "k") (str.to.re "-") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; <!--.*?-->
(assert (not (str.in.re X (re.++ (str.to.re "<!--") (re.* re.allchar) (str.to.re "-->\x0a")))))
(check-sat)
