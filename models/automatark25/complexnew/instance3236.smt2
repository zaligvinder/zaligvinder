(declare-const X String)
; /\u{F6}\u{EC}\u{D9}\u{B3}\u{67}\u{CF}\u{9E}\u{3D}\u{7B}(\u{F6}\u{EC}\u{D9}\u{B3}\u{67}\u{CF}\u{9E}\u{3D}\u{7B}){500}/m
(assert (str.in_re X (re.++ (str.to_re "/\u{f6}\u{ec}\u{d9}\u{b3}g\u{cf}\u{9e}={") ((_ re.loop 500 500) (str.to_re "\u{f6}\u{ec}\u{d9}\u{b3}g\u{cf}\u{9e}={")) (str.to_re "/m\u{a}"))))
; Host\u{3A}act=Host\u{3a}User-Agent\u{3A}User-Agent\u{3A}Liteselect\u{2F}Get
(assert (not (str.in_re X (str.to_re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\u{a}"))))
(check-sat)
