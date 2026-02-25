(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (str.to_re "80"))))

(assert (< (+ (* (- 6) (str.len x)) (* 6 (str.to_int x))) 18))
(assert (= (* 9 (str.len x)) 71))

(check-sat)