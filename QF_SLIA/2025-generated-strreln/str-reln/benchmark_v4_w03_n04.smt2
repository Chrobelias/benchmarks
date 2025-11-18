(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "926") (re.+ (str.to_re "3"))))))
(assert (str.in_re y (re.union (re.union (str.to_re "3") (re.+ (str.to_re "1"))) (str.to_re "66"))))
(assert (str.in_re z (re.+ (re.++ (re.* (str.to_re "31")) (str.to_re "3")))))
(assert (str.in_re a (re.union (re.range "7" "9") (re.+ (re.+ (str.to_re "1"))))))

(assert (>= (+ (* 5 (str.len x)) (* (- 5) (str.len y)) (* 8 (str.len z)) (* 8 (str.len a))) 85))
(assert (>= (+ (* 2 (str.len x)) (str.len z) (* 9 (str.len a)) (* (- 6) (str.to_int z)) (* (- 5) (str.to_int a))) 24))

(check-sat)