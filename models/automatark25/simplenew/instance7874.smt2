(declare-const X String)
; (?i:on(blur|c(hange|lick)|dblclick|focus|keypress|(key|mouse)(down|up)|(un)?load|mouse(move|o(ut|ver))|reset|s(elect|ubmit)))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}on") (re.union (str.to_re "blur") (re.++ (str.to_re "c") (re.union (str.to_re "hange") (str.to_re "lick"))) (str.to_re "dblclick") (str.to_re "focus") (str.to_re "keypress") (re.++ (re.union (str.to_re "key") (str.to_re "mouse")) (re.union (str.to_re "down") (str.to_re "up"))) (re.++ (re.opt (str.to_re "un")) (str.to_re "load")) (re.++ (str.to_re "mouse") (re.union (str.to_re "move") (re.++ (str.to_re "o") (re.union (str.to_re "ut") (str.to_re "ver"))))) (str.to_re "reset") (re.++ (str.to_re "s") (re.union (str.to_re "elect") (str.to_re "ubmit"))))))))
(check-sat)
