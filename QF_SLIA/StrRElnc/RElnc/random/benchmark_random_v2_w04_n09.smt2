(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "36")))

(assert (str.in_re y (re.union (str.to_re "0") (re.union (re.* (str.to_re "830")) (str.to_re "803")))))
(assert (str.in_re x (re.++ (re.+ (re.union (re.* (re.range "0" "7")) (str.to_re "255"))) (str.to_re "6"))))

(assert (= (+ (* (- 2) (str.len x)) (* (- 6) (str.len y))) 31))
(assert (= (+ (* 4 (str.len y)) (* (- 8) (str.to_int x))) 60))
(assert (<= (+ (* 7 (str.to_int x)) (* (- 5) (str.to_int y))) 10))

(check-sat)