(declare-const X String)
; /myversion\u{7c}(\d\u{2e}){3}\d\u{d}\u{a}/
(assert (not (str.in_re X (re.++ (str.to_re "/myversion|") ((_ re.loop 3 3) (re.++ (re.range "0" "9") (str.to_re "."))) (re.range "0" "9") (str.to_re "\u{d}\u{a}/\u{a}")))))
; com\u{2F}index\.php\?tpid=\u{7D}\u{7B}User\u{3A}
(assert (str.in_re X (str.to_re "com/index.php?tpid=}{User:\u{a}")))
; clvompycem\u{2f}cen\.vcnHost\u{3A}User-Agent\u{3A}\u{d}\u{a}
(assert (not (str.in_re X (str.to_re "clvompycem/cen.vcnHost:User-Agent:\u{d}\u{a}\u{a}"))))
(check-sat)
