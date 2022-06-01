(declare-const X String)
; ^(\{|\[|\().+(\}|\]|\)).+$
(assert (str.in_re X (re.++ (re.union (str.to_re "{") (str.to_re "[") (str.to_re "(")) (re.+ re.allchar) (re.union (str.to_re "}") (str.to_re "]") (str.to_re ")")) (re.+ re.allchar) (str.to_re "\u{a}"))))
(check-sat)
