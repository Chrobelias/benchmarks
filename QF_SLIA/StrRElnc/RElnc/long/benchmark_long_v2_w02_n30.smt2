(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= y (str.++ "86" x)))

(assert (str.in_re y (re.+ (re.union (re.union (re.range "0" "9") (re.+ (str.to_re "67"))) (str.to_re "72")))))
(assert (str.in_re x (re.* (re.++ (str.to_re "92") (re.range "5" "8")))))

(assert (< (+ (* (- 7) (str.to_int x)) (* (- 2) (str.to_int y))) 18))
(assert (<= (+ (* (- 9) (str.len x)) (* 3 (str.len y))) 35))

(check-sat)