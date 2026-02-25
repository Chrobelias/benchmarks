(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (str.to_re "4") (re.union (re.union (re.* (re.range "0" "8")) (str.to_re "2")) (str.to_re "302")))))
(assert (str.in_re x (re.* (re.range "1" "8"))))

(assert (> (* (- 9) (str.len y)) 15))
(assert (= (+ (* (- 2) (str.to_int x)) (* 6 (str.to_int y))) 77))

(check-sat)