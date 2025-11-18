(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.range "3" "7"))))
(assert (str.in_re y (re.++ (re.union (re.* (re.range "1" "3")) (re.range "0" "6")) (re.range "5" "7"))))

(assert (= (+ (* (- 2) (str.len x)) (str.to_int y)) 43))
(assert (= (+ (* (- 4) (str.len x)) (* 8 (str.len y))) 36))

(check-sat)