(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "@![hr|Qo<""Hzn>'\n'[9Tr\\z78qhNXtU(3hUH>"))))
(assert (str.in.re x (re.+ (str.to.re "LLB!'\r')'\t'D*6Ygz|>r""('\r'w'\r'XRwE/;nf,`db=+4.&'\x0c'*>r12VVzMKcEg&'\x0c'T+4|Zok)L.Ip$"))))
(assert (> (str.len x) 80))
(assert (< (str.to.int x) 68))
(check-sat)
