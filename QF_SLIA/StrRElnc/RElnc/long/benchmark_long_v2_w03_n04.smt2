(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= (str.++ "42" y) (str.++ "42" x)))

(assert (str.in_re y (re.union (re.range "2" "9") (re.union (str.to_re "36") (re.+ (str.to_re "100"))))))
(assert (str.in_re x (re.* (re.union (str.to_re "240") (str.to_re "2")))))

(assert (<= (+ (* (- 2) (str.to_int x)) (* (- 8) (str.to_int y))) 83))
(assert (<= (+ (* (- 6) (str.to_int x)) (* 2 (str.to_int y))) 12))
(assert (>= (+ (* 2 (str.len x)) (* (- 9) (str.len y))) 57))

(check-sat)