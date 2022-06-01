(declare-const X String)
; (?i:[aeiou]+)\B
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re "a") (str.to_re "e") (str.to_re "i") (str.to_re "o") (str.to_re "u"))) (str.to_re "\u{a}")))))
(check-sat)
