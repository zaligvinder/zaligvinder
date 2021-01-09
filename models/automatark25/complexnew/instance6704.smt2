(declare-const X String)
; Host\x3Astech\x2Eweb-nexus\x2EnetHost\x3A
(assert (not (str.in.re X (str.to.re "Host:stech.web-nexus.netHost:\x0a"))))
; if\s[(][A-Za-z]*\s[=]\s
(assert (not (str.in.re X (re.++ (str.to.re "if") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "(") (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a")))))
; /Referer\x3a\s*?http\x3a\x2f{2}[a-z0-9\x2e\x2d]+\x2fs\x2f\x3fk\x3d/Hi
(assert (not (str.in.re X (re.++ (str.to.re "/Referer:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "http:") ((_ re.loop 2 2) (str.to.re "/")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "/s/?k=/Hi\x0a")))))
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (str.in.re X (str.to.re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\x0a")))
(check-sat)
