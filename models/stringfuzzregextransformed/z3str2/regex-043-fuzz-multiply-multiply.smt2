(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "aaaa") (str.to.re "bbbb")))))
(assert (= 16 (str.to.int x)))
(assert (not (= x "aaaabbbbbbbb")))
(assert (not (= x "aaaahhhhAAAAhhhh")))
(assert (not (= x "wwww''''{{{{cccc~~~~")))
(assert (not (= x "GGGGYYYY****TTTTEEEE")))
(assert (not (= x "ZZZZUUUU%%%%aaaa")))
(assert (not (= x "1111bbbb}}}}aaaa")))
(assert (not (= x """""""""""""""""""""""""""""""""GGGGvvvv")))
(check-sat)
