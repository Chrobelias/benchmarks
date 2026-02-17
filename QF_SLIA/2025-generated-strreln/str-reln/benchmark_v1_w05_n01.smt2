(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.range "5" "8"))))

(assert (= (+ (* 2 (str.len x)) (* (- 2) (str.to_int x))) 10))
(assert (> (+ (* 3 (str.len x)) (* 7 (str.to_int x))) 96))
(assert (< (* (- 7) (str.to_int x)) 2))

(check-sat)