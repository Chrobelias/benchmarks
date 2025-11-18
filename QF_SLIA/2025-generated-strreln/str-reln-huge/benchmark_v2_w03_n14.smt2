(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.* (re.* (re.union (str.to_re "7") (re.* (str.to_re "21")))))))
(assert (str.in_re y (re.++ (re.++ (re.+ (re.range "2" "6")) (str.to_re "82")) (str.to_re "92"))))

(assert (= (+ (* (- 2) (str.len y)) (* 7 (str.to_int y))) 52))
(assert (>= (+ (* (- 10) (str.to_int x)) (* 9 (str.to_int y))) 39))

(check-sat)