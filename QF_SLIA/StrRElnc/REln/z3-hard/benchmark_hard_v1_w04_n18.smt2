(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.range "4" "8")))))

(assert (> (+ (* 8 (str.len x)) (* (- 3) (str.to_int x))) 41))
(assert (>= (* 9 (str.len x)) 41))
(assert (> (str.len x) 49))

(check-sat)