(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.* (re.++ (str.to_re "165") (re.union (str.to_re "70") (str.to_re "191"))))))
(assert (str.in_re y (re.union (str.to_re "432") (re.union (re.+ (str.to_re "275")) (str.to_re "7")))))
(assert (str.in_re z (re.* (re.++ (str.to_re "2") (str.to_re "9")))))

(assert (< (+ (* 6 (str.len y)) (* 2 (str.to_int x)) (* 4 (str.to_int y))) 96))
(assert (<= (+ (* (- 5) (str.to_int x)) (* 8 (str.to_int y)) (* (- 2) (str.to_int z))) 51))

(check-sat)