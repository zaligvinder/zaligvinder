(declare-const X String)
; (("|')[a-z0-9\/\.\?\=\&]*(\.htm|\.asp|\.php|\.jsp)[a-z0-9\/\.\?\=\&]*("|'))|(href=*?[a-z0-9\/\.\?\=\&"']*)
(assert (not (str.in.re X (re.union (re.++ (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re ".") (re.union (str.to.re "htm") (str.to.re "asp") (str.to.re "php") (str.to.re "jsp"))) (re.++ (str.to.re "\x0ahref") (re.* (str.to.re "=")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&") (str.to.re "\x22") (str.to.re "'"))))))))
; (?i:on(blur|c(hange|lick)|dblclick|focus|keypress|(key|mouse)(down|up)|(un)?load|mouse(move|o(ut|ver))|reset|s(elect|ubmit)))
(assert (not (str.in.re X (re.++ (str.to.re "\x0aon") (re.union (str.to.re "blur") (re.++ (str.to.re "c") (re.union (str.to.re "hange") (str.to.re "lick"))) (str.to.re "dblclick") (str.to.re "focus") (str.to.re "keypress") (re.++ (re.union (str.to.re "key") (str.to.re "mouse")) (re.union (str.to.re "down") (str.to.re "up"))) (re.++ (re.opt (str.to.re "un")) (str.to.re "load")) (re.++ (str.to.re "mouse") (re.union (str.to.re "move") (re.++ (str.to.re "o") (re.union (str.to.re "ut") (str.to.re "ver"))))) (str.to.re "reset") (re.++ (str.to.re "s") (re.union (str.to.re "elect") (str.to.re "ubmit"))))))))
; /^\/blog\/[a-zA-Z0-9]{3}\.(g(3|e)d|mm|vru|be|nut)$/U
(assert (not (str.in.re X (re.++ (str.to.re "//blog/") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".") (re.union (re.++ (str.to.re "g") (re.union (str.to.re "3") (str.to.re "e")) (str.to.re "d")) (str.to.re "mm") (str.to.re "vru") (str.to.re "be") (str.to.re "nut")) (str.to.re "/U\x0a")))))
; Serverwjpropqmlpohj\x2floHost\x3AKEY=
(assert (str.in.re X (str.to.re "Serverwjpropqmlpohj/loHost:KEY=\x0a")))
; Subject\x3A\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAHHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "media.dxcdirect.com.smx?PASSW=SAHHost:\x0a")))))
(check-sat)
