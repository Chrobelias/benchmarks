(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.* (re.++ (str.to_re "6") (re.range "0" "3")))))
(assert (str.in_re y (re.++ (str.to_re "1") (re.union (re.* (str.to_re "170")) (re.* (str.to_re "975"))))))

(assert (<= (* (- 9) (str.len x)) 61))
(assert (<= (+ (* (- 6) (str.len x)) (* (- 10) (str.len y))) 68))
(assert (<= (+ (* (- 10) (str.len x)) (* (- 3) (str.len y))) 25))
(assert (>= (* 2 (str.len x)) 35))
(assert (<= (+ (* (- 9) (str.len y)) (* 3 (str.to_int x)) (str.to_int y)) 52))

(check-sat)