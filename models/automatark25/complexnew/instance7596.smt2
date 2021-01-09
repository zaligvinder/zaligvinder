(declare-const X String)
; /filename=[^\n]*\x2exps/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xps/i\x0a")))))
; ^[^\~\`\!\@\#\$\%\^\&\*\(\)\-\_\=\+\\\|\[\]\{\}\;\:\"\'\,\<\./\>\?\s](([a-zA-Z0-9]*[-_\./]?[a-zA-Z0-9]{1,})*)$
(assert (str.in.re X (re.++ (re.union (str.to.re "~") (str.to.re "`") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "^") (str.to.re "&") (str.to.re "*") (str.to.re "(") (str.to.re ")") (str.to.re "-") (str.to.re "_") (str.to.re "=") (str.to.re "+") (str.to.re "\x5c") (str.to.re "|") (str.to.re "[") (str.to.re "]") (str.to.re "{") (str.to.re "}") (str.to.re ";") (str.to.re ":") (str.to.re "\x22") (str.to.re "'") (str.to.re ",") (str.to.re "<") (str.to.re ".") (str.to.re "/") (str.to.re ">") (str.to.re "?") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (re.union (str.to.re "-") (str.to.re "_") (str.to.re ".") (str.to.re "/"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ewps/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wps/i\x0a")))))
; \sKeylogging\s+ApofisToolbar
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Keylogging\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ApofisToolbar\x0a"))))
(check-sat)
