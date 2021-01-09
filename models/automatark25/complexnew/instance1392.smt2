(declare-const X String)
; User-Agent\x3a\s+Host\x3AnamediepluginHost\x3AX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:namediepluginHost:X-Mailer:\x13\x0a"))))
; \x2Etxt\stoolbar\.anwb\.nlHost\x3AiOpusA-311Servert=form-data\x3B\x20name=\x22pid\x22
(assert (str.in.re X (re.++ (str.to.re ".txt") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nlHost:iOpusA-311Servert=form-data; name=\x22pid\x22\x0a"))))
; ^(F-)?((2[A|B])|[0-9]{2})[0-9]{3}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "F-")) (re.union (re.++ (str.to.re "2") (re.union (str.to.re "A") (str.to.re "|") (str.to.re "B"))) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ekvl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".kvl/i\x0a"))))
; (?i:on(blur|c(hange|lick)|dblclick|focus|keypress|(key|mouse)(down|up)|(un)?load|mouse(move|o(ut|ver))|reset|s(elect|ubmit)))
(assert (str.in.re X (re.++ (str.to.re "\x0aon") (re.union (str.to.re "blur") (re.++ (str.to.re "c") (re.union (str.to.re "hange") (str.to.re "lick"))) (str.to.re "dblclick") (str.to.re "focus") (str.to.re "keypress") (re.++ (re.union (str.to.re "key") (str.to.re "mouse")) (re.union (str.to.re "down") (str.to.re "up"))) (re.++ (re.opt (str.to.re "un")) (str.to.re "load")) (re.++ (str.to.re "mouse") (re.union (str.to.re "move") (re.++ (str.to.re "o") (re.union (str.to.re "ut") (str.to.re "ver"))))) (str.to.re "reset") (re.++ (str.to.re "s") (re.union (str.to.re "elect") (str.to.re "ubmit")))))))
(check-sat)
