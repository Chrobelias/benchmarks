(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ x "76") (str.++ y "76")))

(assert (str.in_re x (re.union (re.union (re.range "2" "4") (re.* (str.to_re "837"))) (re.+ (str.to_re "924")))))
(assert (str.in_re y (re.+ (re.union (re.* (re.range "2" "4")) (str.to_re "8")))))

(assert (< (+ (* 9 (str.to_int x)) (* (- 7) (str.to_int y))) 83))
(assert (>= (+ (* 6 (str.len x)) (* (- 2) (str.len y))) 98))

(check-sat)