(set-logic ALL)


(declare-fun x () String)
(declare-fun y () String)

(assert (= x "\u{68}\145\u{6c}l\o"))

;sat
(assert (str.in_re x (re.* (re.range "a" "u"))))
(check-sat)

(check-sat)
