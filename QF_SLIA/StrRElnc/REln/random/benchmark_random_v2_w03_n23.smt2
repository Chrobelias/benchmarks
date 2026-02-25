(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.* (str.to_re "2")) (str.to_re "0"))))
(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "421")) (str.to_re "104")) (re.* (re.range "6" "9")))))

(assert (< (* 6 (str.to_int y)) 59))
(assert (= (+ (str.len x) (* 10 (str.len y))) 25))
(assert (> (+ (* (- 7) (str.len x)) (* (- 4) (str.len y))) 16))

(check-sat)