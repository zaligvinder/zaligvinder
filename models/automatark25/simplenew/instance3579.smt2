(declare-const X String)
; (([\n,  ])*((<+)([^<>]+)(>*))+([\n,  ])*)+
(assert (str.in_re X (re.++ (re.+ (re.++ (re.* (re.union (str.to_re "\u{a}") (str.to_re ",") (str.to_re " "))) (re.+ (re.++ (re.+ (str.to_re "<")) (re.+ (re.union (str.to_re "<") (str.to_re ">"))) (re.* (str.to_re ">")))) (re.* (re.union (str.to_re "\u{a}") (str.to_re ",") (str.to_re " "))))) (str.to_re "\u{a}"))))
(check-sat)
