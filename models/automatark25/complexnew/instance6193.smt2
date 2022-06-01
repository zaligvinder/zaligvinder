(declare-const X String)
; (mailto\:|(news|(ht|f)tp(s?))\://)(([^[:space:]]+)|([^[:space:]]+)( #([^#]+)#)?)
(assert (not (str.in_re X (re.++ (re.union (str.to_re "mailto:") (re.++ (re.union (str.to_re "news") (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")))) (str.to_re "://"))) (re.union (re.++ (re.union (str.to_re "[") (str.to_re ":") (str.to_re "s") (str.to_re "p") (str.to_re "a") (str.to_re "c") (str.to_re "e")) (re.+ (str.to_re "]"))) (re.++ (re.opt (re.++ (str.to_re " #") (re.+ (re.comp (str.to_re "#"))) (str.to_re "#"))) (re.union (str.to_re "[") (str.to_re ":") (str.to_re "s") (str.to_re "p") (str.to_re "a") (str.to_re "c") (str.to_re "e")) (re.+ (str.to_re "]")))) (str.to_re "\u{a}")))))
; ^([0-9a-fA-F])*$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}")))))
(check-sat)
