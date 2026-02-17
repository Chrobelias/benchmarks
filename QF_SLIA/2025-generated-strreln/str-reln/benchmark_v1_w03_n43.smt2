(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.++ (str.to_re "65") (str.to_re "0"))))))

(assert (< (* 3 (str.to_int x)) 69))
(assert (< (+ (* 5 (str.len x)) (* (- 3) (str.to_int x))) 37))

(check-sat)