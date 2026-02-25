(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (re.* (str.to_re "115")) (re.++ (str.to_re "1") (str.to_re "153")))))
(assert (str.in_re y (re.union (str.to_re "124") (re.* (str.to_re "647")))))

(assert (= (+ (* (- 7) (str.to_int x)) (* 2 (str.to_int y))) 37))
(assert (>= (+ (* (- 2) (str.len x)) (* 10 (str.len y))) 11))
(assert (<= (* 9 (str.len y)) 17))

(check-sat)