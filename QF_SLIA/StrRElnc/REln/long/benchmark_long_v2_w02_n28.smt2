(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.union (str.to_re "15") (re.++ (re.* (re.range "7" "9")) (re.* (str.to_re "80"))))))
(assert (str.in_re x (re.* (re.union (str.to_re "121") (str.to_re "86")))))

(assert (<= (+ (* (- 3) (str.to_int x)) (* (- 7) (str.to_int y))) 18))
(assert (>= (+ (str.len x) (* 10 (str.len y))) 35))

(check-sat)