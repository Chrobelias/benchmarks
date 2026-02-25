(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.union (str.to_re "408") (re.++ (str.to_re "47") (str.to_re "116"))))))

(assert (> (* (- 9) (str.to_int x)) 21))
(assert (< (+ (* 7 (str.len x)) (* 6 (str.to_int x))) 29))

(check-sat)