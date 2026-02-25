(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.union (str.to_re "24") (str.to_re "198")) (re.* (str.to_re "219")))))
(assert (str.in_re y (re.union (str.to_re "828") (re.union (re.* (str.to_re "0")) (str.to_re "72")))))

(assert (>= (+ (* 3 (str.len x)) (* 7 (str.len y))) 55))
(assert (= (+ (* 5 (str.len x)) (* (- 8) (str.to_int x))) 90))

(check-sat)