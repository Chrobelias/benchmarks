(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "72")))

(assert (str.in_re y (re.+ (re.* (re.++ (str.to_re "4") (str.to_re "1"))))))
(assert (str.in_re x (re.union (re.union (str.to_re "13") (re.* (str.to_re "769"))) (re.* (re.range "1" "8")))))

(assert (>= (+ (* (- 5) (str.len x)) (* (- 5) (str.len y))) 69))
(assert (> (* 10 (str.to_int x)) 90))
(assert (= (+ (* (- 9) (str.to_int x)) (* (- 5) (str.to_int y))) 56))

(check-sat)