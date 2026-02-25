(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.* (re.++ (re.+ (str.to_re "505")) (str.to_re "803"))) (str.to_re "840"))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "738")) (re.+ (re.* (str.to_re "696"))))))

(assert (< (+ (* (- 3) (str.len y)) (* (- 3) (str.to_int x))) 73))
(assert (< (+ (* 8 (str.len x)) (* (- 10) (str.len y))) 43))

(check-sat)