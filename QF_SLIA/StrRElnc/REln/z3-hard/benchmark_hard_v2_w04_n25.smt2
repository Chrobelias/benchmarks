(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (str.to_re "173") (re.++ (re.* (str.to_re "96")) (str.to_re "257")))))
(assert (str.in_re x (re.union (str.to_re "33") (re.+ (str.to_re "133")))))

(assert (<= (+ (* 6 (str.len y)) (* 8 (str.to_int x))) 43))
(assert (>= (+ (* 2 (str.len x)) (* (- 9) (str.to_int x)) (* (- 2) (str.to_int y))) 86))

(check-sat)