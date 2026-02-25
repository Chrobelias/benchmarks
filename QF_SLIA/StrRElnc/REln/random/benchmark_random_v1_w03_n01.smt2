(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "743"))))

(assert (> (str.to_int x) 39))
(assert (< (+ (* (- 9) (str.len x)) (* (- 8) (str.to_int x))) 41))

(check-sat)