(declare-const X String)
; (?i:on(blur|c(hange|lick)|dblclick|focus|keypress|(key|mouse)(down|up)|(un)?load|mouse(move|o(ut|ver))|reset|s(elect|ubmit)))
(assert (not (str.in.re X (re.++ (str.to.re "\x0aon") (re.union (str.to.re "blur") (re.++ (str.to.re "c") (re.union (str.to.re "hange") (str.to.re "lick"))) (str.to.re "dblclick") (str.to.re "focus") (str.to.re "keypress") (re.++ (re.union (str.to.re "key") (str.to.re "mouse")) (re.union (str.to.re "down") (str.to.re "up"))) (re.++ (re.opt (str.to.re "un")) (str.to.re "load")) (re.++ (str.to.re "mouse") (re.union (str.to.re "move") (re.++ (str.to.re "o") (re.union (str.to.re "ut") (str.to.re "ver"))))) (str.to.re "reset") (re.++ (str.to.re "s") (re.union (str.to.re "elect") (str.to.re "ubmit"))))))))
(check-sat)
