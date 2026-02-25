(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.range "4" "7"))))

(assert (> (+ (* (- 6) (str.len x)) (* 4 (str.to_int x))) 77))
(assert (= (str.to_int x) 76))
(assert (>= (str.to_int x) 33))
(assert (= (* 2 (str.len x)) 94))

(check-sat)