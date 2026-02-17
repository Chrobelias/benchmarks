(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "466"))))

(assert (>= (+ (* (- 4) (str.len x)) (* 7 (str.to_int x))) 14))
(assert (> (+ (* 4 (str.len x)) (* (- 6) (str.to_int x))) 60))
(assert (> (str.len x) 83))

(check-sat)