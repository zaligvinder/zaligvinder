(declare-const X String)
; (mailto\:|(news|(ht|f)tp(s?))\://)(([^[:space:]]+)|([^[:space:]]+)( #([^#]+)#)?)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "mailto:") (re.++ (re.union (str.to.re "news") (re.++ (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")))) (str.to.re "://"))) (re.union (re.++ (re.union (str.to.re "[") (str.to.re ":") (str.to.re "s") (str.to.re "p") (str.to.re "a") (str.to.re "c") (str.to.re "e")) (re.+ (str.to.re "]"))) (re.++ (re.opt (re.++ (str.to.re " #") (re.+ (re.comp (str.to.re "#"))) (str.to.re "#"))) (re.union (str.to.re "[") (str.to.re ":") (str.to.re "s") (str.to.re "p") (str.to.re "a") (str.to.re "c") (str.to.re "e")) (re.+ (str.to.re "]")))) (str.to.re "\x0a")))))
; ^([0-9a-fA-F])*$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a")))))
(check-sat)
