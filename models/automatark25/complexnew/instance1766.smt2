(declare-const X String)
; www\x2Efreescratchandwin\x2Ecom\w+Port.*User-Agent\x3AToolbarkit
(assert (not (str.in.re X (re.++ (str.to.re "www.freescratchandwin.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Port") (re.* re.allchar) (str.to.re "User-Agent:Toolbarkit\x0a")))))
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (str.in.re X (re.++ (str.to.re "www.2-seek.com/search") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystem\x0a"))))
; /filename=[^\n]*\x2ewps/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wps/i\x0a"))))
; MyHost\x3AtoHost\x3AWinSessionwww\x2eurlblaze\x2enetResultHost\x3A
(assert (not (str.in.re X (str.to.re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\x0a"))))
(check-sat)
