(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.union (re.* (str.to_re "8")) (str.to_re "41")) (str.to_re "7"))))
(assert (str.in_re x (re.* (re.++ (str.to_re "517") (str.to_re "66")))))

(assert (> (+ (* 7 (str.to_int x)) (* (- 2) (str.to_int y))) 63))
(assert (<= (+ (* (- 9) (str.len x)) (* 3 (str.len y))) 21))
(assert (<= (* (- 3) (str.len y)) 46))
(assert (>= (+ (* (- 8) (str.len x)) (* 5 (str.len y))) 90))

(check-sat)