(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ y "50")))

(assert (str.in_re y (re.* (str.to_re "7"))))
(assert (str.in_re x (re.* (re.union (re.range "0" "7") (str.to_re "342")))))

(assert (<= (+ (* (- 10) (str.to_int x)) (* (- 7) (str.to_int y))) 60))
(assert (<= (+ (* (- 8) (str.len x)) (* 9 (str.to_int y))) 67))

(check-sat)