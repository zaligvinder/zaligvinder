(declare-const X String)
; (\/\*(\s*|.*?)*\*\/)|(--.*)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "/*") (re.* (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar))) (str.to_re "*/")) (re.++ (str.to_re "\u{a}--") (re.* re.allchar))))))
; Host\u{3a}\s+Agentbody=\u{25}21\u{25}21\u{25}21OptixSubject\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}Subject:\u{a}"))))
; passcorrect\u{3B}\d+AcmeSubject\u{3A}ready\.\r\nby\u{2F}cbn\u{2F}node=
(assert (not (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.range "0" "9")) (str.to_re "AcmeSubject:ready.\u{d}\u{a}by/cbn/node=\u{a}")))))
(check-sat)
