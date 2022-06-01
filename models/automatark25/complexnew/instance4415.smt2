(declare-const X String)
; LIST\]SpamBlockerUtilityTry2FindBasicHost\u{3A}User-Agent\u{3A}AcmeprotocolSpy
(assert (not (str.in_re X (str.to_re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\u{a}"))))
; ([^a-zA-Z0-9])
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
