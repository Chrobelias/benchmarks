(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "88" x) (str.++ y "59")))

(assert (str.in_re y (re.+ (re.range "7" "9"))))
(assert (str.in_re x (re.* (re.union (str.to_re "5") (re.++ (re.* (str.to_re "591")) (str.to_re "9"))))))

(assert (= (+ (* (- 8) (str.to_int x)) (str.to_int y)) 7))
(assert (< (+ (* 7 (str.len x)) (* (- 9) (str.len y))) 54))
(assert (>= (* 8 (str.len y)) 3))

(check-sat)