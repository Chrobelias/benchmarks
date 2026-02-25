(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "21")))

(assert (str.in_re x (re.union (str.to_re "2") (re.union (str.to_re "56") (re.+ (re.* (str.to_re "774")))))))
(assert (str.in_re y (re.+ (re.union (re.range "0" "7") (str.to_re "792")))))

(assert (= (+ (* 5 (str.len x)) (* 10 (str.len y))) 45))
(assert (>= (* 7 (str.len y)) 19))
(assert (> (+ (* 10 (str.to_int x)) (* 4 (str.to_int y))) 74))
(assert (<= (* (- 5) (str.to_int x)) 51))

(check-sat)