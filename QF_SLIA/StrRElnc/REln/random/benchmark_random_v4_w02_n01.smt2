(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.+ (str.to_re "25"))))
(assert (str.in_re z (re.* (re.* (re.union (str.to_re "2") (str.to_re "65"))))))
(assert (str.in_re x (re.union (str.to_re "903") (re.+ (str.to_re "28")))))
(assert (str.in_re a (re.++ (str.to_re "12") (re.++ (re.+ (str.to_re "144")) (str.to_re "66")))))

(assert (= (+ (* 8 (str.len z)) (* (- 4) (str.to_int a))) 51))

(check-sat)