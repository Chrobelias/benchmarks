(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ y "79")))

(assert (str.in_re x (re.+ (re.union (re.+ (re.range "0" "9")) (re.* (str.to_re "18"))))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "9") (re.* (str.to_re "244"))))))

(assert (> (+ (* 8 (str.len x)) (* (- 7) (str.len y))) 39))
(assert (= (+ (* 9 (str.len x)) (* (- 3) (str.len y))) 32))
(assert (> (+ (* (- 5) (str.to_int x)) (* (- 10) (str.to_int y))) 73))

(check-sat)