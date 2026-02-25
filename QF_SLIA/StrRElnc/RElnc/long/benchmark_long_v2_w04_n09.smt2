(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ "56" y)))

(assert (str.in_re y (re.union (re.* (str.to_re "47")) (str.to_re "918"))))
(assert (str.in_re x (re.union (str.to_re "2") (re.* (re.range "2" "8")))))

(assert (> (+ (* 4 (str.len y)) (* (- 4) (str.to_int x)) (* (- 9) (str.to_int y))) 24))
(assert (< (+ (* (- 10) (str.len y)) (* (- 4) (str.to_int y))) 83))

(check-sat)