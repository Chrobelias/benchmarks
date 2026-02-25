(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "52")))

(assert (str.in_re x (re.union (re.union (re.* (str.to_re "21")) (re.* (str.to_re "168"))) (str.to_re "5"))))
(assert (str.in_re y (re.++ (re.+ (re.range "1" "8")) (re.* (re.range "2" "4")))))

(assert (> (+ (* (- 4) (str.len x)) (* (- 7) (str.len y))) 13))
(assert (= (+ (* (- 4) (str.len x)) (* (- 8) (str.to_int y))) 28))
(assert (<= (+ (* 10 (str.to_int x)) (* (- 6) (str.to_int y))) 27))

(check-sat)