(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.union (re.+ (str.to_re "74")) (str.to_re "93")))))

(assert (< (* (- 6) (str.len x)) 72))
(assert (= (+ (* (- 7) (str.len x)) (* (- 5) (str.to_int x))) 21))

(check-sat)