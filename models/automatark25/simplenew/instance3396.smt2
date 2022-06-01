(declare-const X String)
; ([^,0-9]\D*)([0-9]*|\d*\,\d*)$
(assert (not (str.in_re X (re.++ (re.union (re.* (re.range "0" "9")) (re.++ (re.* (re.range "0" "9")) (str.to_re ",") (re.* (re.range "0" "9")))) (str.to_re "\u{a}") (re.union (str.to_re ",") (re.range "0" "9")) (re.* (re.comp (re.range "0" "9")))))))
(check-sat)
