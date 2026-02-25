(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= y (str.++ x "38")))

(assert (str.in_re y (re.union (re.+ (re.range "1" "9")) (re.union (re.* (str.to_re "912")) (str.to_re "35")))))
(assert (str.in_re x (re.* (re.++ (re.* (re.+ (str.to_re "460"))) (str.to_re "235")))))

(assert (>= (+ (* 7 (str.len x)) (* (- 10) (str.len y)) (* (- 6) (str.to_int y))) 20))
(assert (>= (+ (* 8 (str.to_int x)) (* 3 (str.to_int y))) 35))

(check-sat)