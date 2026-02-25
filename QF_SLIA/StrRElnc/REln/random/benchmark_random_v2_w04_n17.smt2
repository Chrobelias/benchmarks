(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "984") (re.union (re.* (str.to_re "39")) (str.to_re "627")))))
(assert (str.in_re x (re.++ (re.range "6" "8") (re.union (re.union (str.to_re "4") (re.* (str.to_re "28"))) (str.to_re "73")))))

(assert (<= (+ (* 8 (str.len y)) (* 2 (str.to_int y))) 45))
(assert (> (+ (* 8 (str.len x)) (* 7 (str.to_int x)) (* (- 2) (str.to_int y))) 75))

(check-sat)