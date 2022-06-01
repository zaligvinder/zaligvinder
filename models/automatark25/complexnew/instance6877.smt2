(declare-const X String)
; ovpl\s+\u{7D}\u{7B}Port\u{3A}.*SOAPAction\u{3A}.*adfsgecoiwnfHost\u{3A}\u{3F}search\u{3D}
(assert (str.in_re X (re.++ (str.to_re "ovpl") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Port:") (re.* re.allchar) (str.to_re "SOAPAction:") (re.* re.allchar) (str.to_re "adfsgecoiwnf\u{1b}Host:?search=\u{a}"))))
; ^([A-Z0-9?.+-])+([,]([A-Z0-9?.+-])+)*$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "?") (str.to_re ".") (str.to_re "+") (str.to_re "-"))) (re.* (re.++ (str.to_re ",") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "?") (str.to_re ".") (str.to_re "+") (str.to_re "-"))))) (str.to_re "\u{a}")))))
; Host\u{3a}\s+is\s+User-Agent\u{3A}cid=tb\u{2e}Cookie\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:cid=tb.Cookie:\u{a}")))))
(check-sat)
