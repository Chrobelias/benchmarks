(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.* (re.union (re.++ (str.to_re "22") (str.to_re "30")) (str.to_re "90")))))
(assert (str.in_re x (re.* (re.++ (re.* (re.range "5" "9")) (str.to_re "10")))))

(assert (<= (+ (* (- 9) (str.to_int x)) (* (- 10) (str.to_int y))) 57))
(assert (<= (+ (* (- 5) (str.len x)) (* 4 (str.len y))) 80))
(assert (>= (+ (* 5 (str.to_int x)) (* (- 3) (str.to_int y))) 91))

(check-sat)