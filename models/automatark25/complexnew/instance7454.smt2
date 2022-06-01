(declare-const X String)
; /^\/\?[A-Za-z0-9_-]{15}=l3S/U
(assert (str.in_re X (re.++ (str.to_re "//?") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))) (str.to_re "=l3S/U\u{a}"))))
; \u{2F}cs\u{2F}pop4\u{2F}User-Agent\u{3A}kitwww\u{2E}borlander\u{2E}com\u{2E}cn
(assert (str.in_re X (str.to_re "/cs/pop4/User-Agent:kitwww.borlander.com.cn\u{a}")))
; /\.jpg\u{20}HTTP\/1\.[01]\r\nUser\u{2d}Agent\u{3a}\u{20}[a-z]+\r\nHost\u{3a}\u{20}[a-z0-9\u{2d}\u{2e}]+\.com\.br\r\n\r\n$/
(assert (str.in_re X (re.++ (str.to_re "/.jpg HTTP/1.") (re.union (str.to_re "0") (str.to_re "1")) (str.to_re "\u{d}\u{a}User-Agent: ") (re.+ (re.range "a" "z")) (str.to_re "\u{d}\u{a}Host: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re ".com.br\u{d}\u{a}\u{d}\u{a}/\u{a}"))))
; jsp\s+pjpoptwql\u{2f}rlnj[^\n\r]*Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "jsp") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "pjpoptwql/rlnj") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
(check-sat)
