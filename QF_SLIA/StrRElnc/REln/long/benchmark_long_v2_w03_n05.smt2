(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (re.++ (str.to_re "330") (re.union (re.+ (str.to_re "949")) (str.to_re "746"))) (str.to_re "674"))))
(assert (str.in_re x (re.union (re.union (str.to_re "49") (re.* (re.* (re.range "3" "5")))) (str.to_re "92"))))

(assert (< (+ (* (- 7) (str.to_int x)) (* 6 (str.to_int y))) 83))
(assert (<= (+ (* (- 8) (str.len x)) (* (- 5) (str.len y))) 35))
(assert (>= (+ (* (- 4) (str.len x)) (* 8 (str.len y))) 8))

(check-sat)