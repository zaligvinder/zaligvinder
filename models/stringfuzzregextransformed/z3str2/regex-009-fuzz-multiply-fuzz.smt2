(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re ",0Kv'\x0c'cFHO'\r'EN5kDXp~FGg'\t'Mbac"))))
(assert (str.in.re x (re.* (str.to.re "aAh}({""DfxRXu[&A'NV#&'~g""t.gOMnr`;I?'\\\\\\,Gd[d{.i3af'\r'''{:Aw='s>'\n'`<Ut""0cEzVn^4]#UT' 'bFj0' 'j$g/EkgPA^c^KCUnOmstpt{%yB`#q'D:fLFd,'\x0b'[;Z7E1KAgWYEn' '_%9'\x0b'N~X]S.seY>hw%r7!.ig3wu-S0'\t'^ws]##'\r'peoKFfO{aZd%^JhR/_bT!&P'\n'f-EE;R#>q)v`K;6YEL`"))))
(assert (> (str.len x) 64))
(assert (< (str.to.int x) 5))
(check-sat)
