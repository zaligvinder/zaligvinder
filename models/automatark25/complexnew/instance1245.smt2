(declare-const X String)
; ^\d+(\,\d{1,2})?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; \\red([01]?\d\d?|2[0-4]\d|25[0-5])\\green([01]?\d\d?|2[0-4]\d|25[0-5])\\blue([01]?\d\d?|2[0-4]\d|25[0-5]);
(assert (not (str.in.re X (re.++ (str.to.re "\x5cred") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x5cgreen") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x5cblue") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ";\x0a")))))
; /filename=[^\n]*\x2eppt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ppt/i\x0a"))))
; /\?id=[A-Z0-9]{20}&cmd=img/U
(assert (not (str.in.re X (re.++ (str.to.re "/?id=") ((_ re.loop 20 20) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&cmd=img/U\x0a")))))
; (?i:on(blur|c(hange|lick)|dblclick|focus|keypress|(key|mouse)(down|up)|(un)?load|mouse(move|o(ut|ver))|reset|s(elect|ubmit)))
(assert (not (str.in.re X (re.++ (str.to.re "\x0aon") (re.union (str.to.re "blur") (re.++ (str.to.re "c") (re.union (str.to.re "hange") (str.to.re "lick"))) (str.to.re "dblclick") (str.to.re "focus") (str.to.re "keypress") (re.++ (re.union (str.to.re "key") (str.to.re "mouse")) (re.union (str.to.re "down") (str.to.re "up"))) (re.++ (re.opt (str.to.re "un")) (str.to.re "load")) (re.++ (str.to.re "mouse") (re.union (str.to.re "move") (re.++ (str.to.re "o") (re.union (str.to.re "ut") (str.to.re "ver"))))) (str.to.re "reset") (re.++ (str.to.re "s") (re.union (str.to.re "elect") (str.to.re "ubmit"))))))))
(check-sat)
