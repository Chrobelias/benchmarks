(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "573") (re.union (re.+ (str.to_re "582")) (str.to_re "4"))))))

(assert (< (+ (* (- 5) (str.len x)) (* 8 (str.to_int x))) 8))
(assert (>= (+ (* 8 (str.len x)) (* (- 9) (str.to_int x))) 28))

(check-sat)