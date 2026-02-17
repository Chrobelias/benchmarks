(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "5") (re.union (re.+ (str.to_re "48")) (re.range "0" "8")))))

(assert (> (+ (* 3 (str.len x)) (* (- 8) (str.to_int x))) 74))
(assert (< (* 3 (str.to_int x)) 75))
(assert (< (* (- 3) (str.to_int x)) 46))

(check-sat)