(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ y "54")))

(assert (str.in_re y (re.* (re.range "5" "9"))))
(assert (str.in_re x (re.union (re.++ (re.range "4" "6") (re.* (re.range "1" "8"))) (re.* (re.range "6" "9")))))

(assert (< (+ (* (- 3) (str.len y)) (* 6 (str.to_int y))) 45))

(check-sat)