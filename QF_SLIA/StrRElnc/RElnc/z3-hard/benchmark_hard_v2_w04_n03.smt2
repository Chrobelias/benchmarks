(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ y "65") (str.++ "87" x)))

(assert (str.in_re x (re.union (re.* (str.to_re "88")) (re.+ (re.range "5" "7")))))
(assert (str.in_re y (re.* (re.range "7" "9"))))

(assert (> (+ (* (- 4) (str.len x)) (* 6 (str.len y)) (* 6 (str.to_int y))) 27))
(assert (< (+ (* (- 4) (str.len x)) (* (- 9) (str.len y)) (str.to_int y)) 45))

(check-sat)