(declare-const X String)
; /<linearGradient[^>]*>\s*<\x2flinearGradient>/i
(assert (str.in.re X (re.++ (str.to.re "/<linearGradient") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "</linearGradient>/i\x0a"))))
; ^([1-9]|0[1-9]|[12][0-9]|3[01])(-|/)(([1-9]|0[1-9])|(1[0-2]))(-|/)(([0-9][0-9])|([0-9][0-9][0-9][0-9]))$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.union (str.to.re "-") (str.to.re "/")) (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "-") (str.to.re "/")) (re.union (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /\x2em4v([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.m4v") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; jsp\s+pjpoptwql\x2frlnj[^\n\r]*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "jsp") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnj") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
; (\[a url=\"[^\[\]\"]*\"\])([^\[\]]+)(\[/a\])
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "[/a]\x0a[a url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22]"))))
(check-sat)
