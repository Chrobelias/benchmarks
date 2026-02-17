(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.+ (re.+ (re.range "4" "8"))))))

(assert (>= (+ (* 4 (str.len x)) (* 3 (str.to_int x))) 81))
(assert (= (+ (str.len x) (* 5 (str.to_int x))) 71))
(assert (< (* (- 10) (str.len x)) 60))

(check-sat)