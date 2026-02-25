(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "37" x)))

(assert (str.in_re y (re.union (re.+ (str.to_re "94")) (re.union (str.to_re "373") (re.range "7" "9")))))
(assert (str.in_re x (re.+ (re.range "1" "9"))))

(assert (> (+ (* 2 (str.to_int x)) (* (- 10) (str.to_int y))) 55))
(assert (>= (+ (* (- 5) (str.len x)) (* (- 8) (str.len y))) 3))
(assert (> (+ (* (- 5) (str.len x)) (* (- 2) (str.len y))) 55))

(check-sat)