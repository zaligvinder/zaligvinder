(declare-const X String)
; \x2Etxt\stoolbar\.anwb\.nlHost\x3AiOpusA-311Servert=form-data\x3B\x20name=\x22pid\x22
(assert (str.in.re X (re.++ (str.to.re ".txt") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nlHost:iOpusA-311Servert=form-data; name=\x22pid\x22\x0a"))))
(check-sat)
