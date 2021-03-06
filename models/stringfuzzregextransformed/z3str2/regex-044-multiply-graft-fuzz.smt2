(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.range "0" "9"))))
(assert (= (str.len x) 3))
(assert (not (= x "")))
(assert (not (= x "00")))
(assert (not (= x "3u")))
(assert (not (= x "wU")))
(assert (not (= x "u8")))
(assert (not (= x "6e{")))
(assert (not (= x "R")))
(assert (not (= x "9XP")))
(assert (not (= x "73=")))
(check-sat)
