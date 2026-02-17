(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.range "5" "7"))))

(assert (> (+ (* 5 (str.len x)) (* (- 6) (str.to_int x))) 6))
(assert (< (+ (* (- 8) (str.len x)) (* (- 4) (str.to_int x))) 74))
(assert (>= (* (- 2) (str.to_int x)) 0))

(check-sat)