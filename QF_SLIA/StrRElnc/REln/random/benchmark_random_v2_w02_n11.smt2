(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.union (re.+ (str.to_re "87")) (str.to_re "204")) (re.* (str.to_re "137")))))
(assert (str.in_re x (re.union (re.* (str.to_re "432")) (re.* (re.* (str.to_re "688"))))))

(assert (< (+ (* (- 9) (str.to_int x)) (* 9 (str.to_int y))) 95))
(assert (< (+ (* 3 (str.len x)) (* 2 (str.len y))) 24))

(check-sat)