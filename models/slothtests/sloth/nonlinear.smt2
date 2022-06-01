(set-logic ALL)

(declare-fun a () String)
(declare-fun b () String)

(assert (= a (str.++ b b)))
(assert (str.in_re a (re.++ (re.+ (str.to_re "("))
                            (re.+ (str.to_re ")")))))

(check-sat)

