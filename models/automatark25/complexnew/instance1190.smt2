(declare-const X String)
; isiz=Xtrastepwebhancer\u{2E}comStubbyOnever\u{3a}Ghost
(assert (str.in_re X (str.to_re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\u{13}\u{a}")))
; /\)\r\nHost\u{3a}\u{20}[a-z\d\u{2e}\u{2d}]{6,32}\r\nCache\u{2d}Control\u{3a}\u{20}no\u{2d}cache\r\n\r\n$/
(assert (str.in_re X (re.++ (str.to_re "/)\u{d}\u{a}Host: ") ((_ re.loop 6 32) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "-"))) (str.to_re "\u{d}\u{a}Cache-Control: no-cache\u{d}\u{a}\u{d}\u{a}/\u{a}"))))
(check-sat)
