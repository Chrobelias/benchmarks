(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= y (str.++ x "32")))

(assert (str.in_re x (re.+ (re.++ (re.++ (str.to_re "15") (re.+ (str.to_re "50"))) (str.to_re "905")))))
(assert (str.in_re y (re.* (re.+ (re.range "0" "9")))))

(assert (<= (+ (* 5 (str.len y)) (* 4 (str.to_int x)) (* 9 (str.to_int y))) 50))
(assert (= (+ (* (- 9) (str.len x)) (* 10 (str.len y))) 0))
(assert (<= (+ (* 7 (str.len x)) (* 7 (str.len y))) 2))

(check-sat)