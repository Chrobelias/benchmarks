(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "707"))))

(assert (< (+ (* (- 4) (str.len x)) (* 8 (str.to_int x))) 47))
(assert (>= (+ (* 10 (str.len x)) (str.to_int x)) 49))

(check-sat)