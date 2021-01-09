(declare-const X String)
; MyAgentprotocolprotocolHost\x3A\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29data2\.activshopper\.com
(assert (str.in.re X (str.to.re "MyAgentprotocolprotocolHost:/s(robert@blackcastlesoft.com)data2.activshopper.com\x0a")))
(check-sat)
