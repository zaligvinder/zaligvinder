; This example is currently beyond the scope of our tool, since
; it contains length constraints and integer variables

(set-logic ALL)

(declare-fun a () String)
(declare-fun b () String)
(declare-fun a_len () Int)

(assert (= b (str.++ a "c")))
; (assert (= (str.len a) (str.len b)))
(assert (str.in_re a (re.* (str.to_re "xy"))))
(assert (not (str.in_re b (re.* (str.to_re "xy")))))
(assert (= (str.len a) a_len))
(assert (> a_len 0))

(check-sat)