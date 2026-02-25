(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "52" x)))

(assert (str.in_re y (re.union (str.to_re "597") (re.+ (re.range "2" "7")))))
(assert (str.in_re x (re.union (re.* (str.to_re "4")) (str.to_re "101"))))

(assert (< (+ (* (- 7) (str.len x)) (str.len y)) 35))
(assert (< (+ (* (- 7) (str.len x)) (* (- 7) (str.len y))) 53))
(assert (>= (+ (str.len x) (str.len y) (* (- 4) (str.to_int x)) (* (- 5) (str.to_int y))) 21))

(check-sat)